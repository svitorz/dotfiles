#!/bin/zsh
# Nome da sessão
SESSION_NAME="dev-session"
# Caminho do projeto
PROJECT_DIR="/home/svitorz/dev/lumiundns/www"
# Função para aguardar o Sail iniciar
wait_for_sail() {
  echo "Aguardando o Sail iniciar..."
  local timeout=30
  local start_time=$(date +%s)
  while ! docker ps | grep -q 'lumiundns.test'; do
    sleep 1
    if (($(date +%s) - start_time > timeout)); then
      echo "Timeout ao esperar o Sail iniciar."
      return 1
    fi
  done
  echo "Sail iniciado com sucesso!"
}
# Verifica se a sessão já existe
tmux has-session -t $SESSION_NAME 2>/dev/null
if [ $? != 0 ]; then
  # Inicia uma nova sessão tmux e define o diretório do projeto
  tmux new-session -d -s $SESSION_NAME -c $PROJECT_DIR -n 'Main'
  # Painel 1: Rodando o Laravel Sail
  tmux send-keys -t $SESSION_NAME:0 'sail up -d --build && sail npm install && sail npm run build' C-m
  # Aguarda o Sail estar ativo
  wait_for_sail
  tmux send-keys -t $SESSION_NAME:0 'sail artisan queue:listen' C-m

  # Painel 3: Rodando Stripe CLI (horizontal split)
  tmux split-window -h -t $SESSION_NAME:0 -c $PROJECT_DIR
  tmux send-keys -t $SESSION_NAME:0.1 'stripe listen --forward-to localhost/stripe/webhooks/test_webhook' C-m
  # Ajusta o layout para ocupar toda a tela
  tmux select-layout -t $SESSION_NAME tiled
  
  # Cria uma nova janela
  tmux new-window -t $SESSION_NAME -c $PROJECT_DIR -n "editor" "nvim"

  tmux new-window -t $SESSION_NAME -c $PROJECT_DIR -n "git" "lzg"
  # Alterna para a nova janela
  tmux select-window -t $SESSION_NAME:1 
fi
# Atacha à sessão existente ou nova
tmux attach -t $SESSION_NAME

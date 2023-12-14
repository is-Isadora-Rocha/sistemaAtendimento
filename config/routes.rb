Rails.application.routes.draw do
  root 'senhas#index'
  get 'gerar_prioridade', to: 'senhas_prioridade#gerar_prioridade'
  get 'gerar_normal', to: 'senhas_consulta_normal#gerar_normal'
end

class SenhaPrioridadeController < ApplicationController
    def gerar_prioridade
        @ultima_prioridade = Senha.where("numero LIKE ?", "P%").last
        numero = @ultima_prioridade ? @ultima_prioridade.numero.next : 'P001'
        Senha.create(numero: numero)
        redirect_to root_path, notice: "Senha prioritária gerada: #{numero}"
      end
end

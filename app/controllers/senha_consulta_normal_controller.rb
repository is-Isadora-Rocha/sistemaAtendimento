class SenhaConsultaNormalController < ApplicationController
    def gerar_normal
        @ultima_normal = Senha.where("numero LIKE ?", "N%").last
        numero = @ultima_normal ? @ultima_normal.numero.next : 'N001'
        Senha.create(numero: numero)
        redirect_to root_path, notice: "Senha normal gerada: #{numero}"
      end
end

class AppraisersController < ApplicationController
  def index
    @avaliadores = Avaliadore.all
  end
  
  def new
    @avaliador = Avaliadore.new
  end
  
  def create
      @avaliador = Avaliadore.new(avaliador_params)
  end
  
  def show
    @avaliador = Avaliadore.find(params[:id])
  end

  private
  def avaliador_params
    params.require(:avaliador).permit(:name, :email, :password, :password_confirmation, :cpf, :data_nasc, :sexo, :profissao,
     :endereco, :cidade, :bairro, :estado, :cep, :telefone_casa, :telefone_celular)
  end
end

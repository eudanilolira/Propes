class AthletesController < ApplicationController
  def index
    @atletas = Atleta.all
  end
  
  def new
    @atleta = Atleta.new
  end
  
  def create
      @atleta = Atleta.new(atleta_params)
  end
  
  def show
    @atleta = Atleta.find(params[:id])
  end

  private
  def atleta_params
    params.require(:atleta).permit(:name, :email, :password, :password_confirmation, :cpf, :data_nasc, :idade, :sexo, :estado_civil, :grau_instrucao, :profissao,
     :endereco, :cidade, :bairro, :estado, :cep, :telefone_casa, :telefone_celular, :modalidade, :posicao, :msd, :mif, :fumante, :etilismo, :has, :diabetes, 
     :doencas_cardio, :pratica_exerc, :fami_etilismo, :fami_has, :fami_diabetes, :fami_cardio, :outros)
  end
end

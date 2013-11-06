class PacientesController < ApplicationController
  def new
    @paciente = Paciente.new
  end

  def show
    @paciente = Paciente.find(params[:id])
  end

  def create

    @paciente = Paciente.new(paciente_params)
 
#    require "pry-debugger"; binding.pry 
    if @paciente.save
      @pacientes = Paciente.find(:all)
      render :list
    else
      render :new
    end
  end

  def list
  	@pacientes = Paciente.find(:all)
  end	

  # Never trust parameters from the scary internet, only allow the white list through.
  def paciente_params
    params.require(:paciente).permit(:name, :telefone, :data_nascimento)
  end
end

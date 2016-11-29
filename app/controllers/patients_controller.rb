class PatientsController < ApplicationController
  def index
  	@pacientes = Patient.all
  end

  def new
  	@pacientes = Patient.new
  end

  def show
  	@pacientes= Patient.find(params[:id]) 
  end

  def edit
  	@pacientes= Patient.find(params[:id])
  end

  def update
    @pacientes=Patient.find(params[:id])

    if @pacientes.update paciente_params
        redirect_to @pacientes,notice:"Actualizado"
      else
        render edit
      end
  end

  def create
    	@pacientes=Patient.new paciente_params
    	if @pacientes.save 
    		redirect_to @pacientes, notice: "Creado"
    	else
    		render :new
      end
  end

  def destroy
    @pacientes=Patient.find(params[:id])
    @pacientes.destroy
    redirect_to paciente_path,notice:"Eliminado de la Lista"
  end
  
  private 
      def paciente_params
        params.require(:patient).permit(:nombre,:appaterno,:apmaterno,:direccion,:numerotel )
      end
end

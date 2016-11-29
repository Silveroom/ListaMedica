class Admin::ListsController < ApplicationController
  layout 'admininterface'
  #para acceder a los metodos del controlador si está autentificado
  before_action :authenticate_user!
  def index
  	@listas = List.all
  end

  def new
  	@listas= List.new
  end

  def show
  	@listas= List.find(params[:id]) 
  end

  def edit
  	@listas= List.find(params[:id])
  end

  def update
    @listas=List.find(params[:id])
    if @listas.update lista_params
        redirect_to ['admin',@listas],notice:"Actualizado"
      else
        render edit
      end
  end


  def create
    	@listas= List.new lista_params
    	if @listas.save 
    		redirect_to ['admin',@listas], notice: "Creado"
    	else
    		render :new
    end
  end

  def destroy
    @listas=List.find(params[:id])
    @listas.destroy
    redirect_to admin_lists_path,notice:"Eliminado de la Lista"
  end
    		
    
  private 
    def lista_params
    	params.require(:list).permit(:encargado,:fecha,:hora,:atendido, :user_id, :patient_id)
    end
end
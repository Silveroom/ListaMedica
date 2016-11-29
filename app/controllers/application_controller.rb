class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

before_filter :configure_permitted_parameters, if: :devise_controller?
protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :apellido_paterno, :apellido_materno, :role])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:nombre, :apellido_paterno, :apellido_materno, :role])
  end

   private
    def after_sign_in_path_for(resource)
    	admin_lists_path
      # El path a donde tu quieres que redirija cuando se ha logueado correctamente, ej. posts_path
    end
end

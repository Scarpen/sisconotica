class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => "Você não está autorizado a acessar essa pagina."
  end
  def current_ability
    # Ability.new(current_user, namespace)
    @current_ability ||= Ability.new(current_funcionario)
  end

  protected

  def configure_permitted_parameters
  		devise_parameter_sanitizer.for(:sign_up) do |u| 
  			u.permit(:email, :password, :password_confirmation, :login, :nome, :cpf,:foneResidencial,:foneCelular,:endereco, :bairro, :estado, :cidade, :cep, :imagem, :fotoFuncionario, :dataNascimento, :type, :tipo)
  		end
  		devise_parameter_sanitizer.for(:account_update) do |u| 
  			u.permit(:email, :password, :password_confirmation, :login, :nome, :cpf,:foneResidencial,:foneCelular,:endereco, :bairro, :estado, :cidade, :cep, :imagem, :fotoFuncionario, :dataNascimento, :type, :tipo)
 		end
	end
end

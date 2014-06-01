class Funcionarios::RegistrationsController < Devise::RegistrationsController
  

  before_filter :configure_permitted_parameters


  
  protected
   
  # my custom fields are :name, :heard_how
  # Strong parameters devise
  def configure_permitted_parameters
    asd
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :nome, :cpf)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:email, :password, :password_confirmation, :nome, :cpf)
    end
  end
end
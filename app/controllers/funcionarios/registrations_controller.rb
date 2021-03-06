class Funcionarios::RegistrationsController < Devise::RegistrationsController
   prepend_before_filter :require_no_authentication, only: [ :cancel ]

  before_filter :configure_permitted_parameters
  def create
    build_resource(sign_up_params)

    resource_saved = resource.save
    yield resource if block_given?
    if resource_saved
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end

  end

  
  protected
   
  # my custom fields are :name, :heard_how
  # Strong parameters devise
  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u| 
        u.permit(:email, :password, :password_confirmation, :login, :nome, :cpf,:foneResidencial,:foneCelular,:endereco, :bairro, :estado, :cidade, :cep, :imagem, :fotoFuncionario, :dataNascimento, :type, :tipo)
      end
      devise_parameter_sanitizer.for(:account_update) do |u| 
        u.permit(:email, :password, :password_confirmation, :login, :nome, :cpf,:foneResidencial,:foneCelular,:endereco, :bairro, :estado, :cidade, :cep, :imagem, :fotoFuncionario, :dataNascimento, :type, :tipo)
    end
  end
  def after_sign_up_path_for(resource)
    
  end
end
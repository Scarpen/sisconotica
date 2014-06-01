class WelcomeController < ApplicationController
	before_action :authenticate_funcionario!
end

class TipoFuncionariosController < ApplicationController
  before_action :authenticate_funcionario!
  before_action :set_tipo_funcionario, only: [:show, :edit, :update, :destroy]

  # GET /tipo_funcionarios
  # GET /tipo_funcionarios.json
  def index
    @tipo_funcionarios = TipoFuncionario.all
  end

  # GET /tipo_funcionarios/1
  # GET /tipo_funcionarios/1.json
  def show
  end

  # GET /tipo_funcionarios/new
  def new
    @tipo_funcionario = TipoFuncionario.new
  end

  # GET /tipo_funcionarios/1/edit
  def edit
  end

  # POST /tipo_funcionarios
  # POST /tipo_funcionarios.json
  def create
    @tipo_funcionario = TipoFuncionario.new(tipo_funcionario_params)

    respond_to do |format|
      if @tipo_funcionario.save
        format.html { redirect_to @tipo_funcionario, notice: 'Tipo funcionario was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipo_funcionario }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipo_funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_funcionarios/1
  # PATCH/PUT /tipo_funcionarios/1.json
  def update
    respond_to do |format|
      if @tipo_funcionario.update(tipo_funcionario_params)
        format.html { redirect_to @tipo_funcionario, notice: 'Tipo funcionario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipo_funcionario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_funcionarios/1
  # DELETE /tipo_funcionarios/1.json
  def destroy
    @tipo_funcionario.destroy
    respond_to do |format|
      format.html { redirect_to tipo_funcionarios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_funcionario
      @tipo_funcionario = TipoFuncionario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_funcionario_params
      params.require(:tipo_funcionario).permit(:tipo)
    end
end

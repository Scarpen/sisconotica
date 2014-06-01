class VendasController < ApplicationController
  before_action :set_venda, only: [:show, :edit, :update, :destroy]


  # GET /vendas
  # GET /vendas.json
  def index
    @vendas = Venda.all

    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "Lista"
      end
    end
  end

  # GET /vendas/1
  # GET /vendas/1.json
  def show
    @produtos_venda = VendasProdutos.produtos(@venda.id)

  end

  # GET /vendas/new
  def new
    @venda = Venda.new

    produtos = params[:produtos]
    if produtos == nil
      @produtos = Array.new
    else
      @produtos = params[:produtos]
    end
    
    if  params[:produto] != nil

      @produtos << params[:produto]
    end
    if params[:fechar] != nil
      asd
      @venda.data = Date.today
      valorTotal = 0
      @produtos.each do |p|
        produto = Produto.find(p)
        valorTotal += produto.precoVenda
      end
      @venda.cliente_id = params[:cliente]
      @venda.valorTotal = valorTotal
      @venda.funcionario_id = current_funcionario.id
      if @venda.save
        
        @produtos.each do |p|
          produto = Produto.find(p)
          intermediario = VendasProdutos.new
          intermediario.produto_id = produto.id
          intermediario.venda_id = @venda.id
          intermediario.valorUnit = produto.precoVenda
          intermediario.save
        end
      redirect_to vendas_path
      end
    end
    @produtos_busca = Produto.all
  end
  # GET /vendas
  # GET /vendas.json
 # GET /vendas/1/edit
  def edit
  end

  # POST /vendas
  # POST /vendas.json
  def create
    @venda = Venda.new
    @venda.data = params[:data]
    @venda.valorTotal = 0
    produtos = []
    produtos = params[:produtos]
    produtos.each do |t|
      produto Produto.find(t)
      @venda.valorTotal += produto.valorVenda
    end
    respond_to do |format|
      if @venda.save
        format.html { redirect_to @venda, notice: 'Venda was successfully created.' }
        format.json { render action: 'show', status: :created, location: @venda }
      else
        format.html { render action: 'new' }
        format.json { render json: @venda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendas/1
  # PATCH/PUT /vendas/1.json
  def update
    respond_to do |format|
      if @venda.update(venda_params)
        format.html { redirect_to @venda, notice: 'Venda was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @venda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendas/1
  # DELETE /vendas/1.json
  def destroy
    @venda.destroy
    respond_to do |format|
      format.html { redirect_to vendas_url }
      format.json { head :no_content }
    end
  end
  
  # GET /vendas/1/edit


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venda
      @venda = Venda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venda_params
      params.require(:venda).permit(:data, :valorTotal, :produtos, :cliente_id, :funcionario_id)
    end


  end

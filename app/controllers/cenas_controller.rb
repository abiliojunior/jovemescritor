class CenasController < ApplicationController
  before_action :set_cena, only: [:show, :edit, :update, :destroy]

  # GET /cenas
  # GET /cenas.json
  def index
    @cenas = Cena.all
  end

  # GET /cenas/1
  # GET /cenas/1.json
  def show
  end

  # GET /cenas/new
  def new
    @cena = Cena.new
  end

  # GET /cenas/1/edit
  def edit
  end

  # POST /cenas
  # POST /cenas.json
  def create
    @cena = Cena.new(cena_params)

    respond_to do |format|
      if @cena.save
        format.html { redirect_to @cena, notice: 'Cena was successfully created.' }
        format.json { render :show, status: :created, location: @cena }
      else
        format.html { render :new }
        format.json { render json: @cena.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cenas/1
  # PATCH/PUT /cenas/1.json
  def update
    respond_to do |format|
      if @cena.update(cena_params)
        format.html { redirect_to @cena, notice: 'Cena was successfully updated.' }
        format.json { render :show, status: :ok, location: @cena }
      else
        format.html { render :edit }
        format.json { render json: @cena.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cenas/1
  # DELETE /cenas/1.json
  def destroy
    @cena.destroy
    respond_to do |format|
      format.html { redirect_to cenas_url, notice: 'Cena was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cena
      @cena = Cena.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cena_params
      params.require(:cena).permit(:titulo, :conteudo, :capitulo_id)
    end
end

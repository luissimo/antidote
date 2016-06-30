class FactuursController < ApplicationController
  before_action :set_factuur, only: [:show, :edit, :update, :destroy]

  # GET /factuurs
  # GET /factuurs.json
  def index
    @factuurs = Factuur.all
  end

  # GET /factuurs/1
  # GET /factuurs/1.json
  def show
  end

  # GET /factuurs/new
  def new
    @factuur = Factuur.new
  end

  # GET /factuurs/1/edit
  def edit
  end

  # POST /factuurs
  # POST /factuurs.json
  def create
    @factuur = Factuur.new(factuur_params)

    respond_to do |format|
      if @factuur.save
        format.html { redirect_to @factuur, notice: 'Factuur was successfully created.' }
        format.json { render :show, status: :created, location: @factuur }
      else
        format.html { render :new }
        format.json { render json: @factuur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factuurs/1
  # PATCH/PUT /factuurs/1.json
  def update
    respond_to do |format|
      if @factuur.update(factuur_params)
        format.html { redirect_to @factuur, notice: 'Factuur was successfully updated.' }
        format.json { render :show, status: :ok, location: @factuur }
      else
        format.html { render :edit }
        format.json { render json: @factuur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factuurs/1
  # DELETE /factuurs/1.json
  def destroy
    @factuur.destroy
    respond_to do |format|
      format.html { redirect_to factuurs_url, notice: 'Factuur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factuur
      @factuur = Factuur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factuur_params
      params.require(:factuur).permit(:amount, :currency, :date)
    end
end

class InvoicesController < ApplicationController
  before_action :set_invoice, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /invoices
  # GET /invoices.json
  def index
    @invoices =  current_user.invoices.all
    flash.now[:notice] = 'U heeft nog geen facturen toegevoegd' if @invoices.empty?
  end

  def select_company
    ## select existing company info (sjablonen)
    if params[:company].present?
      @company = current_user.companies.find(params[:company])
      @data_company = Hash.new
      @data_company["company_name"] = @company.company_name
      @data_company["btw_number"] = @company.btw_number
      @data_company["iban_number"] = @company.iban_number
      @data_company["logo"] = @company.picture.url
      render json: @data_company
    end
  end

  def select_customer
    ## select existing customer info
    if params[:customer].present?
      @customer = current_user.customers.find(params[:customer])
      @data_customer = Hash.new
      @data_customer['company_name'] = @customer.company_name
      @data_customer['address_line_1'] = @customer.address_line_1
      @data_customer['zip_code'] = @customer.zip_code
      render json: @data_customer
    end
  end

  # GET /invoices/1
  # GET /invoices/1.json
  def show
  end

  # GET /invoices/new
  def new
    @invoice = current_user.invoices.new
    @invoice.build_company
    @invoice.products.build
    @invoice.build_customer
    if params[:company].present?
      @company = current_user.companies.find(params[:company])
      @picture = @company.picture.url
    end
  end

  # GET /invoices/1/edit
  def edit
  end

  # POST /invoices
  # POST /invoices.json
  def create
    @invoice = current_user.invoices.new(invoice_params)

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to @invoice, notice: 'Uw factuur is opgeslagen.' }
        format.json { render :show, status: :created, location: @invoice }
      else
        format.html { @invoice.build_company
        @invoice.products.build
        @invoice.build_customer
        render :new }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    respond_to do |format|
      if @invoice.update(invoice_params)
        format.html { redirect_to @invoice, notice: 'Uw factuur is aangepast.' }
        format.json { render :show, status: :ok, location: @invoice }
      else
        format.html { render :edit }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
    @invoice.destroy
    respond_to do |format|
      format.html { redirect_to invoices_url, notice: 'Uw factuur is verwijderd.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_invoice
    @invoice = current_user.invoices.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def invoice_params
    params.require(:invoice).permit(:number, :currency, :date, :duedate, :btwtotal, :subtotal, :total, :footer,
                                    customer_attributes: [:id, :company_name, :address_line_1, :zip_code, :_destroy],
                                    company_attributes: [:id, :btw_number, :iban_number, :company_name, :picture, :_destroy],
                                    products_attributes: [:id, :quantity, :description, :unitprice, :btw, :total])
  end
end


class AddressesController < Customers::BaseController
  # GET /customers/addresses
  def index
    @addresses = current_customer.addresses
  end

  # GET /customers/addresses/1
  def show
    @address = current_customer.addresses.find(params[:id])
  end

  # GET /customers/addresses/new
  def new
    @address = Address.new
  end

  # GET /customers/addresses/1/edit
  def edit
    @address = current_customer.addresses.find(params[:id])
  end

  # POST /customers/addresses
  def create
    @address = Address.new(address_params)

    respond_to do |format|
      if @address.save
        format.html { redirect_to @address, notice: 'Address was successfully created.' }
        format.json { render :show, status: :created, location: @address }
      else
        format.html { render :new }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/addresses/1
  def update
    @address = current_customer.addresses.find(params[:id])

    respond_to do |format|
      if @address.update(address_params)
        format.html { redirect_to @address, notice: 'Address was successfully updated.' }
        format.json { render :show, status: :ok, location: @address }
      else
        format.html { render :edit }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/addresses/1
  def destroy
    @address = current_customer.addresses.find(params[:id])

    @address.destroy
    respond_to do |format|
      format.html { redirect_to customers_addresses_url, notice: 'Address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit()
    end
end

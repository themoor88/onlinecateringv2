class Vendors::FoodItemsController < Vendors::BaseController
  # GET /vendors/food_items
  def index
    @food_items = current_vendor.food_items
  end

  # GET /vendors/food_items/1
  def show
  end

  # GET /vendors/food_items/new
  def new
    @food_item = current_vendor.food_items.new
  end

  # GET /vendors/food_items/1/edit
  def edit
    @food_item = current_vendor.food_items.find(params[:id])
  end

  # POST /vendors/food_items
  def create
    @food_item = current_vendor.food_items.new(food_item_params)

    respond_to do |format|
      if @food_item.save
        format.html { redirect_to @food_item, notice: 'Fooditem was successfully created.' }
        format.json { render :show, status: :created, location: @food_item }
      else
        format.html { render :new }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendors/food_items/1
  def update
    @food_item = current_vendor.food_items.find(params[:id])

    respond_to do |format|
      if @vfood_item.update(food_item_params)
        format.html { redirect_to @food_item, notice: 'Fooditem was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_item }
      else
        format.html { render :edit }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendors/food_items/1
  def destroy
    @food_item = current_vendor.food_items.find(params[:id])

    @food_item.destroy
    respond_to do |format|
      format.html { redirect_to vendors_food_items_url, notice: 'Fooditem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def food_item_params
      params.require(:food_item).permit(:title, :description, :allergy_information, :included, :photo, :tag_list)
    end
end

class Customers::OrdersController < Customers::BaseController
  # GET /customers/orders
  def index
    @orders = current_customer.orders
  end

  # GET /customers/orders/1
  def show
    @order = current_customer.orders.find(params[:id])
  end

  # PATCH/PUT /customers/orders/1
  def update
    @order = current_customer.orders.find(params[:id])

    respond_to do |format|
      if @prder.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/orders/1
  def destroy
    @order = current_customer.orders.find(params[:id])

    @order.destroy
    respond_to do |format|
      format.html { redirect_to customers_orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def order_params
    params.require(:order).permit
  end
end

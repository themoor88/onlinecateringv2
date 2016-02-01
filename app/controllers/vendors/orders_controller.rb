class Vendors::OrdersController < Vendors::BaseController
  # GET /vendors/orders
  def index
    @orders = Order.all
  end

  # GET /vendors/orders/1
  def show
    @order = current_vendor.orders.find(params[:id])
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def vendors_order_params
      params.require(:order).permit()
    end
end

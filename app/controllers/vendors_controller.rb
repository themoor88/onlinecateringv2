class VendorsController < ApplicationController

  # GET /index
  def index
    @vendors = Vendor.all
  end

  # GET /vendors/1
  def show
    @vendor = Vendor.find(params[:id])
  end

  private

end

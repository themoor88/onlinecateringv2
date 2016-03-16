class Vendors::BaseController < ApplicationController
  before_action :authenticate_vendor!

  protected

  private
end

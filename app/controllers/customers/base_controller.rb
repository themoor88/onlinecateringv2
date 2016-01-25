class Customers::BaseController < ApplicationController
  before_action :authenticate_customer!

  protected

  private
end
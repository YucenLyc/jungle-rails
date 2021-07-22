class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV['ADMIN_USERNAME_KEY'], password: ENV['ADMIN_PASSWORD_KEY']

  def show
    @sum_product = Product.count
    @sum_category = Category.count 
  end
end

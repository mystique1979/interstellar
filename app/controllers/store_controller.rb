class StoreController < ApplicationController
  def index
  	@products = Product.where(:user =>(params[:user]=nil)).order(:name)
  end
end

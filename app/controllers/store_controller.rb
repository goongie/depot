class StoreController < ApplicationController
  def index
    @products = Product.all
    @counter = session_count
    @cart = current_cart
  end

  def reset_sesion_count
    session[:counter] = 0
  end
  
  def session_count
    if session[:counter].nil?
      reset_sesion_count
    else
      session[:counter] += 1
    end
  end
end

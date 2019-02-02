#https://blog.teamtreehouse.com/static-pages-ruby-rails
class PagesController < ApplicationController
  def show
    @order = current_order
    if @order.nil? && params[:page] == "order"
      redirect_to new_order_path
    else
      render template: "pages/#{params[:page]}"
    end
  end
end

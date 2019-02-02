#https://blog.teamtreehouse.com/static-pages-ruby-rails
class PagesController < ApplicationController
  def show
    @order = current_order
    render template: "pages/#{params[:page]}"
  end
end

#https://blog.teamtreehouse.com/static-pages-ruby-rails
class PagesController < ApplicationController
  def show
    render template: "pages/#{params[:page]}"
  end
  def about

  end
end

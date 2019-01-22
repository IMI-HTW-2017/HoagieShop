class ApplicationController < ActionController::Base
  def current_order
    @_current_order ||= session[:current_order_id] && Order.find_by(id: session[:current_order_id])
  end
end

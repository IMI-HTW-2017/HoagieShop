class Order < ApplicationRecord

  BILLING_METHODS = {cash: 'Cash', visa: 'VISA', paypal: 'PayPal'}

  def subs_list
    Sub.where(order_id: id)
  end

  def order_price
    price = 0
    self.subs_list.each do |sub|
      price += sub.main_ingredient.price
    end
    self.price = price
  end
end

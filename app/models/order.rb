class Order < ApplicationRecord

  enum billing_methods: { cash: 'Cash', visa: 'VISA', paypal: 'PayPal'}

  def subs_list
    Sub.where(order_id: id)
  end
end

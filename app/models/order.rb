class Order < ApplicationRecord
  def subs_list
    Sub.where(order_id: id)
  end
end

FactoryBot.define do
  factory :order do
    status { "MyString" }
    paid { false }
    delivery_address { "MyString" }
    billing_method { "MyString" }
    price { 1 }
  end
end

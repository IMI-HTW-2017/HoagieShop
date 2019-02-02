FactoryBot.define do
  factory :rating do
    stars { rand(1..5) }
    comment { "This is a rating" }
    published { false }
  end
end

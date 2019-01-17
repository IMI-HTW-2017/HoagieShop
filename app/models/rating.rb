class Rating < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :stars, inclusion: { in: 0..5, message: "%{value} is not a valid rating! Should be between 0 and 5"}
end

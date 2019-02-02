class AddPublishedToRating < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :published, :boolean
  end
end

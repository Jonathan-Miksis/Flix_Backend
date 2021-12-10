class AddFlixRating < ActiveRecord::Migration[6.1]
  def change
    add_column :media, :aggregate_flix_rating, :decimal, precision: 2, scale: 1
  end
end

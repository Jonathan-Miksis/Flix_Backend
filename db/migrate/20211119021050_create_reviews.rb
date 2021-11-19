class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :flix_rating
      t.text :post

      t.timestamps
    end
  end
end

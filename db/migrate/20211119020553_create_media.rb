class CreateMedia < ActiveRecord::Migration[6.1]
  def change
    create_table :media do |t|
      t.string :title
      t.integer :year
      t.string :director
      t.text :cast
      t.string :genre
      t.text :synopsis
      t.integer :rating
      t.string :artwork_url
      t.string :trailer_url

      t.timestamps
    end
  end
end

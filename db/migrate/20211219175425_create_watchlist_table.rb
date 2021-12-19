class CreateWatchlistTable < ActiveRecord::Migration[6.1]
  def change
    create_table :watchlist_tables do |t|
      t.integer :medium_id
      t.integer :user_id
      t.timestamps
    end
  end
end

class DropWatchlistTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :watchlist_tables
  end
end

class AddStatusColumnWatchlist < ActiveRecord::Migration[6.1]
  def change
    add_column :watchlists, :status, :string
  end
end

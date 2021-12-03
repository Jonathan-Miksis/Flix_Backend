class ChangeImdbIdToString < ActiveRecord::Migration[6.1]
  def change
    change_column :media, :imdb_id, :string
  end
end

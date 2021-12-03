class AddImdbIdToMedia < ActiveRecord::Migration[6.1]
  def change
    add_column :media, :imdb_id, :integer
  end
end

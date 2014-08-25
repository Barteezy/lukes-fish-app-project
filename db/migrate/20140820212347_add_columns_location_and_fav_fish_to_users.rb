class AddColumnsLocationAndFavFishToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location, :string
    add_column :users, :favorite_fish, :string
  end
end

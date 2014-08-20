class CreateFish < ActiveRecord::Migration
  def change
    create_table :fish do |t|
      t.string :species
      t.string :location
      t.string :bait

      t.timestamps
    end
  end
end

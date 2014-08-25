class AddAttachmentImageToFish < ActiveRecord::Migration
  def self.up
    change_table :fish do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :fish, :image
  end
end

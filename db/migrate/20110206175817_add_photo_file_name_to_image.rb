class AddPhotoFileNameToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :photo_file_name, :string
  end

  def self.down
    remove_column :images, :photo_file_name
  end
end

class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.belongs_to :beat
      t.string :photo_id
      t.decimal :location
      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end

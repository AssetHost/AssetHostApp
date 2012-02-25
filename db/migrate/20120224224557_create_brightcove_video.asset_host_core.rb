# This migration comes from asset_host_core (originally 20111111193907)
class CreateBrightcoveVideo < ActiveRecord::Migration
  def change
    create_table :brightcove_videos do |t|
      t.integer :videoid, :limit => 8, :null => false
      t.integer :length
      t.timestamps
    end
  end
end

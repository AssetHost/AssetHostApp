# This migration comes from asset_host_core (originally 20120217005548)
class CreateAssetHostCoreBrightcoveVideos < ActiveRecord::Migration
  def change
    create_table :asset_host_core_brightcove_videos do |t|
      t.integer :videoid, :null => false
      t.integer :length
      t.timestamps
    end
  end
end

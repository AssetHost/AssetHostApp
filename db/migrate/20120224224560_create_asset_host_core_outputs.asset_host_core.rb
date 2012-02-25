# This migration comes from asset_host_core (originally 20120217005450)
class CreateAssetHostCoreOutputs < ActiveRecord::Migration
  def change
    create_table :asset_host_core_outputs do |t|
      t.string :code, :size, :extension, :null => false
      t.boolean :prerender, :is_rich, :default => false, :null => false
      t.timestamps
    end
  end
end

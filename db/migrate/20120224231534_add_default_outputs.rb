class AddDefaultOutputs < ActiveRecord::Migration
  def up
    AssetHostCore::Output.create code:"thumb",size:"88x88#",extension:"jpg",prerender:true,is_rich:false
    AssetHostCore::Output.create code:"medium",size:"300x250>",extension:"jpg",prerender:true,is_rich:false
    AssetHostCore::Output.create code:"wide",size:"620x465>",extension:"jpg",prerender:true,is_rich:true
    AssetHostCore::Output.create code:"full",size:"1024x1024>",extension:"jpg",prerender:false,is_rich:true
  end

  def down
    AssetHoreCore::Output.where(:code => ["thumb","medium","wide","full"]).each {|o| o.destroy }
  end
end

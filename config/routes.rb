AssetHostApp::Application.routes.draw do
  devise_for :users
  #devise_for :api_users
  
  mount AssetHostCore::Engine => "/", :as => :assethost
end

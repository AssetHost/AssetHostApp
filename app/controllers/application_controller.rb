class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def authenticate!
    if !current_user
      redirect_to new_user_session_path
    else
      # ok
    end
  end
  
  #----------
  
  def after_sign_in_path_for(resource)
    assethost.a_assets_path
  end
  
  #----------
  def authenticate_api_user!
    if !current_api_user && !current_user
      head :unauthorized
    end
  end
end

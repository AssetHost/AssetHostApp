AssetHostCore.hooks do |config|
  config.current_user_method do
    request.env["warden"].try(:user) || respond_to?(:current_user) && current_user
  end
  
  config.sign_out_path do
    Rails.application.routes.url_helpers.destroy_user_session_path
  end
  
  config.authentication_method do
    request.env['warden'].try(:authenticate!)
  end  
  
  config.api_authentication_method do
    if !current_api_user && !current_user
      head :unauthorized
    end
  end
end
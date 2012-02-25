AssetHostApp::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
  
  # -- AssetHost configuration -- #
  config.assethost.server         = "localhost:3000"
  config.assethost.flickr_api_key = nil
  config.assethost.path           = ':rails_root/public/images/:id_:fingerprint_:sprint.:extension'
  config.assethost.trueurl        = 'http://localhost:3000/images/:id_:fingerprint_:sprint.:extension'
  config.assethost.url            = 'http://localhost:3000/i/:fingerprint/:id-:style.:extension'
  config.assethost.brightcove     = nil
  config.assethost.resque_queue   = :assethost
  config.assethost.thumb_size     = "thumb"
  config.assethost.modal_size     = "medium"
  config.assethost.detail_size    = "wide"
  
  config.after_initialize do    
    #Formtastic::FormBuilder.all_fields_required_by_default = false
    
    Paperclip.options[:command_path] = "/usr/local/ImageMagick/bin/"
    Paperclip.options[:swallow_stderr] = false
  end
  
end
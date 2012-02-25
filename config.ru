# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
use Rack::RawUpload, :paths => ['/a/assets/upload','/a/assets/*/replace']
run AssetHostApp::Application

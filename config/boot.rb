require 'bundler/setup'
require 'dotenv/load'
require 'sinatra'
require 'active_support'
ActiveSupport.eager_load!

Bundler.require(:default, Sinatra::Application.settings.environment)

app_path = File.expand_path(File.join(File.dirname(__FILE__), '..', 'app'))

ActiveSupport::Dependencies.autoload_paths = [
  app_path
]
$LOAD_PATH.unshift(app_path)
require_relative '../app/application'
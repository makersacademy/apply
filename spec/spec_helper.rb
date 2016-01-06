require 'middleman'
require 'rspec'
require 'capybara/rspec'
require 'capybara/webkit'
require 'rack/utils'
require 'middleman-core/load_paths'
Middleman.setup_load_paths

Capybara.app = Middleman::Application.server.inst do
  set :root, File.expand_path(File.join(File.dirname(__FILE__), '..'))
  set :environment, :development
  set :show_exceptions, false
end

Capybara.app = Rack::ShowExceptions.new(Capybara.app)

Capybara::Webkit.configure do |config|
  config.block_unknown_urls
end

Capybara.javascript_driver = :selenium
#Capybara.javascript_driver = :webkit

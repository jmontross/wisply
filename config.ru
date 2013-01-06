# This file is used by Rack-based servers to start the application.

Bundler.require

require "./app"
run Sinatra::Application

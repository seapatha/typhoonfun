require_relative 'bundle/bundler/setup'
require 'sinatra'
require "sinatra/json"

port = ENV['PORT'] || 80
puts "STARTING SINATRA on port #{port}"
set :port, port
set :bind, '0.0.0.0'

get '/healthz' do
  'OK'
end

get '/helloz' do
  "Hello from #{Socket.gethostname}"
end

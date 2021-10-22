require 'rubygems'
require 'bundler/setup'
require 'json'

Bundler.require(:default)

class MyApp < Sinatra::Application
  configure :production, :development do
    enable :logging
  end

  before do
    puts 'x' * 100
    puts params
    puts 'x' * 100
  end

  get '/test' do
    { message: 'success' }.to_json
  end

  get '/live' do
    { message: 'success' }.to_json
  end

  post '/test' do
    { message: 'success' }.to_json
  end

  post '/live' do
    { message: 'success' }.to_json
  end

  get '/' do
    send_file File.join(settings.public_folder, 'index.html')
  end

  run! if app_file == $PROGRAM_NAME
end

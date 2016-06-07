require 'sinatra'
require 'sinatra/activerecord'


configure :development, :test do
  require 'pry'
end

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
end

configure do
  set :views, 'app/views'
end

get '/' do
  @title = "Hello World"
  erb :index
end

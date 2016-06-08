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
  redirect '/bars'
end

get '/bars' do

  erb :'bars_index'
end

get '/bars/:id' do

  erb :'bars_show'
end

get '/pubcrawls' do

  erb :'pubcrawls_index'
end

get '/pubcrawls/:id' do

  erb :'pubcrawls_show'
end

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
  @bars = Bar.all

  erb :'bars_index'
end

get '/bars/:id' do
  @bar = Bar.find(params[:id])
  @pubcrawls = @bar.pubcrawls
  @reviews = @bar.reviews

  erb :'bars_show'
end

get '/pubcrawls' do
  @pubcrawls = Pubcrawl.all

  erb :'pubcrawls_index'
end

get '/pubcrawls/:id' do
  @pubcrawl = Pubcrawl.find(params[:id])
  @bars = @pubcrawl.bars

  erb :'pubcrawls_show'
end

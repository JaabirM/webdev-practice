require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello World"
end

get '/secret' do
  "Oooo! You've reached the secret page!"
end

get '/hello' do
  "This is the greeting page <br> HELLO"
end

get '/random-cat' do
  @name = ["Amigo", "Mistry", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end
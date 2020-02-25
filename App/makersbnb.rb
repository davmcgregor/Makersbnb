require 'sinatra/activerecord'
require 'sinatra/base'
require_relative './models/user'
require_relative './models/spaces'

class Makersbnb < Sinatra::Base
  enable :sessions

  get '/spaces' do
    @name = session[:name]
    @description = session[:description]
    @price = session[:price]
    erb :'index'
  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    session[:user] = User.create(username: params["username"], email: params["email"], password: params["password"])
    @user = session[:user]
  end

  get '/spaces/new' do
    erb :'spaces/new'
  end

  post '/spaces' do
    session[:name] = params[:name]
    session[:description] = params[:description]
    session[:price] = params[:price]
    redirect '/spaces'
  end
  
end

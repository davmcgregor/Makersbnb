require 'sinatra/activerecord'
require 'sinatra/base'
require_relative './models/user'
require_relative './models/spaces'

class Makersbnb < Sinatra::Base
  enable :sessions

  get '/spaces' do
    @user = session[:user]
    erb :index
  end

  get '/users/new' do
    erb :signup
  end

  post '/users/new' do
    session[:user] = User.create(username: params["username"], email: params["email"], password: params["password"])
    @user = session[:user]
  end

end

require 'sinatra/activerecord'
require 'sinatra/base'
require_relative './models/user'
require_relative './models/spaces'

class Makersbnb < Sinatra::Base
  enable :sessions

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    session[:user] = User.create(username: params["username"], email: params["email"], password: params["password"])
    @user = session[:user]
    erb :'/index' #connect to team
  end

end

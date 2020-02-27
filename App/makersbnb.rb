require 'bcrypt'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/base'
require_relative './models/user'
require_relative './models/spaces'
require 'json'
require 'sinatra/flash'

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'makersbnb_development')

class Makersbnb < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  register Sinatra::Flash
  enable :sessions

  get '/' do
    @user = (User.find_by id: session[:user_id])
    if @user
      redirect '/spaces'
    else
    erb :index
    end
  end

  get '/spaces' do
    @user = (User.find_by id: session[:user_id])
    @spaces = Space.all
    erb :'spaces/index'
  end

  get '/users/new' do
    erb :'users/new'
  end

  post '/users/new' do
    encrypted_password = BCrypt::Password.create(params[:password])
    user = User.create(username: params["username"], email: params["email"], password: encrypted_password)
    session[:user_id] = user.id
    redirect '/spaces'
  end

  get '/sessions/new' do
    erb :'sessions/new'
  end

  post '/sessions/new' do
    user = User.where({ username: params[:username] }).first
    if user && BCrypt::Password.create(user.password) == params[:password]
      session[:user_id] = user.id
      redirect '/spaces'
    else
      flash[:notice] = 'Please check your email or password'
      redirect '/sessions/new'
    end
  end

  get '/spaces/new' do
    erb :'spaces/new'
  end

  post '/spaces' do
    Space.create(name: params[:name], description: params[:description], price: params[:price])
    redirect '/spaces'
  end

  post '/bookings/new' do
    @user = (User.find_by id: session[:user_id])
    # @space = (Space.find_by id: session[:space_id])
    Booking.create(start_date: params[:start_date], end_date: params[:end_date], user_id: @user, spaces_id: 1)
    flash[:notice] = "Booking Requested"
    redirect '/spaces'
  end
  
end

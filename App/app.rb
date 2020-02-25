require 'sinatra/base'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

end
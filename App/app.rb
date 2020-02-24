require 'sinatra/base'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    'Sign Up'
  end

end
require 'sinatra'
require 'sinatra/activerecord'

class Space < ActiveRecord::Base
    belongs_to :users
end

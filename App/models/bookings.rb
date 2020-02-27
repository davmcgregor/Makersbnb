require 'sinatra'
require 'sinatra/activerecord'

class Booking < ActiveRecord::Base
  belongs_to :users
  belongs_to :spaces
end

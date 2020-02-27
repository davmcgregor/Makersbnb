require 'sinatra'
require 'sinatra/activerecord'

class Space < ActiveRecord::Base
  belongs_to :users
  has_many :bookings
end

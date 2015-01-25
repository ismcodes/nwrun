class Runner < ActiveRecord::Base
  has_many :signups
  has_many :meets, through: :signups
  
  has_many :participations
  has_many :races, through: :participations
end

class Race < ActiveRecord::Base
  has_many :participations
  has_many :runners, through: :participations
  belongs_to :meet
end

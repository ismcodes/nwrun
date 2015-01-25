class Meet < ActiveRecord::Base
	has_many :races
	has_many :signups
	has_many :runners, through: :signups
end

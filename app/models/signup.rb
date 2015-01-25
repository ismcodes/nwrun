class Signup < ActiveRecord::Base
  belongs_to :meet
  belongs_to :runner
end
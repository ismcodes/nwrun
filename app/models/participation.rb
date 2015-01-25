class Participation < ActiveRecord::Base
  belongs_to :runner
  belongs_to :race
end
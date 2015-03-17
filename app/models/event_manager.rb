class EventManager < ActiveRecord::Base
  belongs_to :runner
  before_create :zero_all

  def zero_all
    self.mean = self.stdev = self.number_races = 0
  end

  def update_stats race_time
    self.mean = (self.mean * self.number_races + race_time) / (self.number_races + 1)
    require 'pry'
    # binding.pry
    self.number_races += 1
  end

end

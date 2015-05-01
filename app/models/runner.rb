class Runner < ActiveRecord::Base
  has_many :signups
  has_many :meets, through: :signups

  has_many :participations
  has_many :races, through: :participations

  has_many :event_managers

  include AlgoliaSearch
  algoliasearch do
    attributesToIndex ['name', 'year']
    customRanking ['asc(year)', 'asc(name)']
    #TODO: so is this [group by, order by]?
  end

  def race_count
    self.participations.size
  end

  def run(race, time)
    pr = Participation.create(finish_time:time)
    pr.race = race
    self.participations << pr
    event_mgr = event_info(race.event)
    event_mgr ||= EventManager.create(event_name:race.event,runner_id:self.id)
    event_mgr.update_stats(time)
  end

  def event_info(event_name)

    self.event_managers.where(event_name:event_name).first
  end

end

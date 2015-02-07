# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

race = Race.create(event: 'The amazing race')
Runner.create(name:"isaac 1")
Runner.create(name:"isaac 2")
Runner.create(name:"isaac 3")
Runner.create(name:"isaac 4")
Runner.create(name:"isaac 5")
Runner.all.each do |r|
  r.participations << Participation.create
  r.participations.last.finish_time = 10
  r.participations.last.race = race
end
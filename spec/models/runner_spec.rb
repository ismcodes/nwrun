require 'rails_helper'

describe Runner do
  context 'relationships' do
    it {should have_many(:signups)}
    it {should have_many(:meets).through(:signups)}
    it {should have_many(:participations)}
    it {should have_many(:races).through(:participations)}
    it {should have_many(:event_managers)}
  end

  before :all do
    @meet = Meet.create
    @race = Race.create(event:"100 Meter dash")
    @meet.races << @race
  end

  it "#race_count returns # of races participated in" do
    runner = Runner.create
    expect(runner.race_count).to eq 0
    runner.run(@race, 1)
    runner.run(@race, 1)
    runner.run(@race, 1)
    expect(runner.race_count).to eq 3
  end

  it "#run adds to user's race participations" do
    runner = Runner.create
    expect{runner.run(@race, 1234)}.to change{runner.race_count}.by 1
    expect(runner.participations.last.finish_time).to eq(1234)
  end

  it "#event_info gets EventManager for runner's events of certain event_name" do
    runner = Runner.create
    expect(runner.event_info(@race.event)).to be_nil
    runner.run(@race,1234)
    expect(runner.event_info(@race.event).mean).to eq 1234
  end
end

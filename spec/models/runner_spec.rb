require 'rails_helper'

RSpec.describe Runner, :type => :model do
  before :all do
    @meet = Meet.create
    @race = Race.create
    @meet.races << @race
  end

  it "#race_count returns count of Runner's races" do
    runner = Runner.create
    expect(runner.race_count).to eq 0
    runner.run(@race)
    runner.run(@race)
    runner.run(@race)
    expect(runner.race_count).to eq 0
  end

  it "#run adds to user's races" do
    runner = Runner.create
    expect{runner.run(@race)}.to change{runner.race_count}.by 1
  end
end

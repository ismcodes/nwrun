require 'rails_helper'

describe Runner do
  context 'relationships' do
    it {should have_many(:signups)}
    it {should have_many(:meets).through(:signups)}
    it {should have_many(:participations)}
    it {should have_many(:races).through(:participations)}
  end

  before :all do
    @meet = Meet.create
    @race = Race.create
    @meet.races << @race
  end

  pending it "#race_count returns count of Runner's races" do
    runner = Runner.create
    expect(runner.race_count).to eq 0
    runner.run(@race)
    runner.run(@race)
    runner.run(@race)
    expect(runner.race_count).to eq 0
  end

  pending it "#run adds to user's races" do
    runner = Runner.create
    expect{runner.run(@race)}.to change{runner.race_count}.by 1
  end
end

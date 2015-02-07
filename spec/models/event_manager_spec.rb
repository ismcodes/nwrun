require 'rails_helper'

describe EventManager do
  context "relationships" do
    it {should belong_to(:runner)}
  end

  before :each do
    @evt_mgr = EventManager.create(event_name:"asdf")
  end

  describe "#update_stats" do

    it "updates number of races for itself" do
      expect(@evt_mgr.number_races).to eq 0
      @evt_mgr.update_stats(123)
      expect(@evt_mgr.number_races).to eq 1
    end

    it "updates mean" do
      expect(@evt_mgr.mean).to eq 0
      r = (1..rand(100)).to_a
      r.each {|x| @evt_mgr.update_stats(x)}
      expect(@evt_mgr.mean).to eq r.inject(:+)/r.length.to_f #prevents rounding
    end

    it "updates standard deviation" do
      expect(@evt_mgr.stdev).to eq 0
    end
end

end

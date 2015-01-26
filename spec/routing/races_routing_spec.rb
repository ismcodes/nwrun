require 'rails_helper'

describe RacesController do
	
  it "routes to show" do
    expect(get: "/races/1").to route_to('races#show', id: '1')
  end

  it "routes to index" do
    expect(get: "/races").to route_to('races#index')
  end

  context 'nested under meet' do
    it "routes to races index for meet" do
      expect(get: "/meets/1/races").to route_to('races#index', meet_id: '1')
    end 
  end  
end
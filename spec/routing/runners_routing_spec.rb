require 'rails_helper'

describe RunnersController do
	
  it "routes to show" do
    expect(get: "/runners/1").to route_to('runners#show', id: '1')
  end

  it "routes to index" do
    expect(get: "/runners").to route_to('runners#index')
  end

end
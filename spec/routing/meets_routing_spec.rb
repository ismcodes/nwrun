require 'rails_helper'

describe MeetsController do

  it "routes to show" do
    expect(get: "/meets/1").to route_to('meets#show', id: '1')
  end

  it "routes to index" do
    expect(get: "/meets").to route_to('meets#index')
  end

	it "routes to new template" do
		expect(get: "/meets/new").to route_to('meets#new_template')
	end

	it "routes to create new meet" do
		expect(post: "/meets/new").to route_to('meets#new')#?
	end
end

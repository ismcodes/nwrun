require 'rails_helper'

describe Race do
	context 'relationships' do
		it {should have_many(:participations)}
		it {should have_many(:runners).through(:participations)}
		it {should belong_to(:meet)}
	end
  
end

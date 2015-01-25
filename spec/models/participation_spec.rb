require 'rails_helper'

describe Participation do
	context 'relationships' do
    it { should belong_to(:runner) }
    it { should belong_to(:race) }
  end  

end
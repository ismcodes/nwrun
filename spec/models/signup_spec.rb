require 'rails_helper'

describe Signup do
  context 'relationships' do
  	it { should belong_to(:meet)}
  	it { should belong_to(:runner)}
  end
end
require 'rails_helper'

describe Meet do
  it { should have_many(:races)}
  it { should have_many(:signups)}
  it { should have_many(:runners).through(:signups)}
end

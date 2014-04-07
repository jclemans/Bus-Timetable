require 'spec_helper'

describe Station do
  it { should validate_presence_of :name }
  it { should have_and_belong_to_many :lines }
  it { should have_many :lines_stations }
end

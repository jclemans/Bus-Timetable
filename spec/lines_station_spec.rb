require 'spec_helper'

describe LinesStation do
  it { should belong_to :station }
  it { should belong_to :line }
end

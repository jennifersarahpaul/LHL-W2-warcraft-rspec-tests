# Enhancement 3
# A dead unit cannot attack another unit. Conversely, an alive unit will also not attack another unit that is already dead.

require_relative 'spec_helper'

describe Footman do

  before :each do
    @footman = Footman.new
    @enemy= Footman.new
  end

  describe "#dead?" do
    it "footman can't attack if he is dead" do
      expect(@footman.attack!(@enemy)).to be(nil)
    end
  end


end

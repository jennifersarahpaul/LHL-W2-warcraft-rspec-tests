# Enhancement 1
# In most strategy games, like Warcraft III, buildings can also be attacked by units. Since a barracks is a building, it has substantial more HP (500) To make matters worse, a Footman does only HALF of its AP as damage to a Barracks. This is because they are quite ineffective against buildings.

# Note: The damage amount should be an integer (Fixnum). Take the ceil division result


require_relative 'spec_helper'

describe Building do

  before :each do
    @building = Building.new
    @footman = Footman.new
  end

  describe "footman does half damage to buildings" do
    it "returns true if damage is half that of attacking other units" do
      @footman.attack_building(@building)
      expect(@building.health_points).to eq(495)  #started with 500
    end
  end
end
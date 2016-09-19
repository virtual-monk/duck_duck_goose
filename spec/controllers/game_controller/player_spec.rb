require 'rails_helper'
require 'game_controller/player'
RSpec.describe Player, type: :model do
  describe Player do
    describe 'create duck' do
      it 'should create player with a duck status' do
        player = Player.new("Rob")
        player.name.should == "Rob"
        player.status.should == "duck"
      end
    end
    describe 'create goose' do
      it 'should create player with a goose status' do
        player = Player.new("Rob", "goose")
        player.name.should == "Rob"
        player.status.should == "goose"
      end
    end
    describe 'create it' do
      it 'should create player with a it status' do
        player = Player.new("Rob", "it")
        player.name.should == "Rob"
        player.status.should == "it"
      end
    end

  end
end

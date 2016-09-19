require 'rails_helper'
require 'game_controller/game'
RSpec.describe Game, type: :model do
  describe Game do
    describe 'assign' do
      it 'should assign Goose' do
        game = Game.new("Rob",nil,"Troi")
        game.human.name.should == "Rob"
        game.goose.name.should == "Troi"
      end
      it 'should assign It' do
        game = Game.new("Rob","Picard",nil)
        game.human.name.should == "Rob"
        game.it.name.should == "Picard"
      end
      it 'should assign It and Goose' do
        game = Game.new("Rob","La Forge", "Worf")
        game.human.name.should == "Rob"
        game.goose.name.should == "Worf"
        game.it.name.should == "La Forge"
      end
      it 'should randomly assign It and Goose' do
        game = Game.new("Rob")
        game.human.name.should == "Rob"
        game.it.should_not == nil
        game.goose.should_not == nil
      end
    end
    describe "results" do
      before(:each) do
        @game = Game.new("Rob", "Picard", "Troi")
      end
      it 'should have a winner' do
        @game.winner.should_not == nil
      end
      it 'should have a loser' do
        @game.loser.should_not == nil
      end
    end
  end
end

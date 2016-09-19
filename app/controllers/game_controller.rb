class GameController < ApplicationController
  require 'game_controller/game'
  require 'game_controller/player'

  def index

  end

  def play
    it = params[:it]
    goose = params[:goose]
    player = params[:human_player]
    @game = Game.new(player, it, goose)
  end
end

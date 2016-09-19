class Game
  attr_reader :human, :players, :it, :goose, :winner, :loser

  def initialize(player, it = nil, goose = nil)
    @human = Player.new(player)
    @players = build_circle
    @players << @human
    play(it, goose)
  end

  def play(it, goose)
    assign("it", it)
    assign("goose", goose)
    chase
  end

  def build_circle
    players = ["Troi", "Crusher", "Worf", "Riker", "Data", "Picard", "La Forge"]
    flock = []
    players.each do |player|
      duck = Player.new(player)
      flock << duck
    end
    return flock
  end

  def assign(status, player)
    if player.nil?
      players = @players - [@it]
      instance_variable_set("@#{status}", players.sample)
    else
      instance_variable_set("@#{status}", @players.find{|p| p.name == player})
    end
    instance_variable_get("@#{status}").status = status
  end

  def chase
    speed = 30..60
    @it_location = 20
    @goose_location = 0
    until @it_location >= 360 || @goose_location >= @it_location
      @it_location += rand(speed)
      @goose_location += rand(speed)
    end
    results
  end

  def results
    if @it_location >= 360
      @winner = @it
      @loser = @goose
    else
      @winner = @goose
      @loser = @it
    end
  end
end

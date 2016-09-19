class Player
  attr_accessor :name, :status
  def initialize(name, status = "duck")
    @name = name
    @status = status
  end
end

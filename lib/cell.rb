class Cell
  attr_reader :coordinate, :ship, :render
  def initialize(coordinate)
    @coordinate = coordinate
    @ship
    @placement = {
      @coordinate => @coordinate
    }
    @render = Hash.new
    @fired_upon = false
  end

  def empty?
    @placement.values.first != @ship
  end

  def place_ship(ship)
    @ship = ship
    @placement[@coordinate] = @ship
  end

  def fired_upon?
    @fired_upon
  end

  def fire_upon
    @ship.hit
    @fired_upon = true
  end
end

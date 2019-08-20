class Cell
  attr_reader :coordinate, :ship
  def initialize(coordinate)
    @coordinate = coordinate
    @ship
    @placement = {
      @coordinate => @coordinate
    }
  end

  def empty?
    @placement.values.first != @ship
  end

  def place_ship(ship)
    @ship = ship
    @placement[@coordinate] = @ship
  end
end

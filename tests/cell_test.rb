require './lib/ship'
require './lib/cell'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class TestCell < Minitest::Test
  def setup
    @ship = Ship.new("Ship", 3)
    @cell = Cell.new("A1")
  end

  def test_if_cell_exists
    assert_instance_of Cell, @cell
  end

  def test_cell_coords
    assert_equal "A1", @cell.coordinate
  end

end

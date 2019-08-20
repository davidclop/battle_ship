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

  def test_if_ship_returns_nil
    assert_nil @cell.ship
  end

  def test_for_empty
    assert_equal true, @cell.empty?
    @cell.place_ship(@ship)
    assert_equal false, @cell.empty?
  end

  def test_for_ship
    @cell.place_ship(@ship)
    assert_equal @ship, @cell.ship
  end

  def test_for_fire_upon
    @cell.place_ship(@ship)
    @cell.fire_upon
    assert_equal 2, @cell.ship.health
  end

  def test_for_fired_upon
    @cell.place_ship(@ship)
    @cell.fire_upon
    assert_equal true, @cell.fired_upon?
  end 
end

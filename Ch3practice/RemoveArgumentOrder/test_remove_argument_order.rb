require 'minitest/autorun'
require_relative 'remove_argument_order'

class GearTest < Minitest::Test
  def test_gear_ratio
    gear  = Gear.new(cog: 11, wheel: Wheel.new( 1, 1))
    ratio = 52 / 11.to_f
    assert_equal ratio, gear.ratio
  end

  def test_gear_inches
    gear  = Gear.new(wheel: Wheel.new( 1, 1), cog: 11)
    inches = (52 / 11.to_f) * (1 + (2 * 1))
    assert_equal inches, gear.gear_inches
  end
end


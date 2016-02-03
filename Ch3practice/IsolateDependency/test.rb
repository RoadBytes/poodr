require 'minitest/autorun'
require_relative 'isolate_dependency'

class GearTest < Minitest::Test
  def test_gear_ratio
    gear   = Gear.new(52, 11, 1, 1)
    answer = 52 / 11.to_f
    assert_equal answer, gear.ratio
  end

  def test_gear_inches
    gear   = Gear.new(52, 11, 1, 1)
    answer = (52 / 11.to_f) * (1 + (2 * 1))
    assert_equal answer, gear.gear_inches
  end
end

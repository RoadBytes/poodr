require 'minitest/autorun'
require_relative 'dependency_injection'

class GearTest < Minitest::Test
  def test_gear_ratio
    gear  = Gear.new(52, 11, 1, 1)
    ratio = 52 / 11.to_f
    assert_equal ratio, gear.ratio
  end

  def test_gear_inches
    gear   = Gear.new(52, 11, 1, 1)
    inches = (52 / 11.to_f) * (1 + (2 * 1))
    assert_equal inches, gear.gear_inches
  end

  # def test_disk
  #   gear   = Gear.new(52, 11, Disk.new(1))
  #   answer = (52 / 11.to_f) * (1)
  #   assert_equal answer, gear.gear_inches
  # end
end


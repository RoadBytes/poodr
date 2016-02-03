# What does the Gear Know about Wheel?
# 4 things considered:
# * Gear knows Wheel is called Wheel
# * Gear knows Wheel has a diameter method
# * Gear know Wheel has two arguments
# * Gear knows Wheel's order of arguments

# Practice refactor to remove these dependencies 
# with **Dependency Injection**

class Gear
  attr_reader :chainring, :cog, :rim, :tire
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog       = cog
    @rim       = rim
    @tire      = tire
  end

  def ratio 
    chainring / cog.to_f 
  end 

  def gear_inches
    ratio * Wheel.new(rim, tire).diameter
  end
end

class Wheel 
  attr_reader :rim, :tire 
  def initialize( rim, tire) 
    @rim  = rim 
    @tire = tire 
  end 
  
  def diameter 
    rim + (tire * 2) 
  end 
end

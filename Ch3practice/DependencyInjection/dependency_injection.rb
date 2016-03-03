# What does the Gear Know about Wheel?
# 4 things considered:
# * Gear knows Wheel is called Wheel
# * Gear knows Wheel has a diameter method
# * Gear know Wheel has two arguments
# * Gear knows Wheel's order of arguments

# Practice refactor to remove these dependencies 
# with **Dependency Injection**

class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(chainring, cog, wheel)
    @chainring = chainring
    @cog       = cog
    @wheel     = wheel
  end

  def ratio 
    chainring / cog.to_f 
  end 

  def gear_inches
    ratio * wheel.diameter
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

class Disk
  attr_reader :diameter
  def initialize(diameter)
    @diameter = diameter
  end
end

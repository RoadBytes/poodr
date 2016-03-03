class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(args)
    @chainring = args.fetch(:chainring || 52)
    @cog       = args[:cog]
    @wheel     = args[:wheel]
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

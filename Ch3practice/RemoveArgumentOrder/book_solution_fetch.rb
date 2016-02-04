class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize( args )
    @chainring = args.fetch( :chainring, 40 )
    @cog       = args.fetch( :cog, 18 )
    @wheel     = args.fetch( :wheel )
  end

  def ratio 
    chainring / cog.to_f 
  end 

  def gear_inches
    ratio * diameter
  end

  def diameter
    wheel.diameter
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

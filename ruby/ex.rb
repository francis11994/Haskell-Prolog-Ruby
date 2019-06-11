class Bicycle  
  attr_reader :gears, :wheels, :seats  
  def initialize(gears = 1)  
    @wheels = 2  
    @seats = 1  
    @gears = gears  
  end 
 
end  
  
class Tandem < Bicycle  
  def initialize(gears)  
    super  
    @seats = 2  
  end

  def set(a)
    @gears = a
  end
  
end

  
t = Tandem.new(2)  
puts t.gears  
puts t.wheels  
puts t.seats  
t.set(5)
puts t.gears
b = Bicycle.new  
puts b.gears  
puts b.wheels  
puts b.seats  

module One
  def test; puts "test One"; end  
end
module Two
  def test; puts "test Two"; end  
end

class OneClass  include One
end
class TwoClass
  include Two
  include One  
end

p OneClass.ancestors # => [OneClass, One, Object, Kernel, BasicObject]
p TwoClass.ancestors 
# => [TwoClass, One, Two, Object, Kernel, BasicObject]
TwoClass.new.test # => test One



class MyClass
  def test
    puts "test1"  
  end
  def test
    puts "test2"  
  end
end

my_class = MyClass.new  
my_class.test # => test2

class MyClass
  def test
    puts "test3"  
  end
end

my_class.test # => test3


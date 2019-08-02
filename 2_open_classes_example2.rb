class MyClass
  def one_method
    puts "one_method"  
  end
end

class MyClass
  def another_method
    puts "another_method"  
  end
end

my_class = MyClass.new  
my_class.one_method # => one_method
my_class.another_method # => another_method



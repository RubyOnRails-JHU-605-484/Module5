class Dog
  def bark
    puts "Woof, woof!"  
  end
  def greet(greeting)
    puts greeting
  end  
end

dog = Dog.new
dog.bark # => Woof, woof!  
dog.send("bark") # => Woof, woof!  
dog.send(:bark) # => Woof, woof!  
method_name = :bark
dog.send method_name # => Woof, woof!

dog.send(:greet, "hello") # => hello

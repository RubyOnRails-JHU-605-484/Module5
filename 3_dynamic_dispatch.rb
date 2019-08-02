require 'yaml'  
some_yaml = %{ 
name: John  
age: 24 
}

class Person; attr_accessor :name, :age; end

person = Person.new
props = YAML::load some_yaml
p props # => { "name"=>"John", "age"=>24 }
props.each {|key, value| person.send("#{key}=", value)}

p person
# => #<Person:0x00007fc70681dd58 @name="John", @age=24>


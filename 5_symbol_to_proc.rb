Person = Struct.new(:name, :age) do
  def old_enough?
    age >= 21
  end  
end

max = Person.new("Max Smith", 22)  
joe = Person.new("Joe Grunt", 15)  
suzy = Person.new("Suzy", 21)
ppl = [max, joe, suzy]

p ppl.select { |person| person.old_enough? }.map { |person| person.name}
# => ["Max Smith", "Suzy"]

# The same as above
p ppl.select(&:old_enough?).map(&:name) # => ["Max Smith", "Suzy"]


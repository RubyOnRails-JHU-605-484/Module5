class Integer
  def seconds
    self
  end
  def minutes
    60 * seconds
  end
  def hours
    60 * minutes
  end  
end

now = Time.now
in_5_minutes = now + 5.minutes  
in_10_minutes = now + 10.minutes
puts in_5_minutes.between?(now, in_10_minutes) # => true
puts now, in_5_minutes, in_10_minutes
# => 2019-03-14 23:59:14 -0400
# => 2019-03-15 00:04:14 -0400
# => 2019-03-15 00:09:14 -0400



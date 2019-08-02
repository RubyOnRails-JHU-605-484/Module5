require_relative 'store'  

class ReportingSystem2
  def initialize
    @store = Store.new
  end
  def method_missing(name, *args)
    super unless @store.respond_to?(name)  
    @store.send(name)
  end
  def respond_to?(name)
    @store.respond_to?(name)  
  end
end

rs = ReportingSystem2.new 
puts  rs.respond_to?(:get_piano_desc) # => true
puts rs.public_methods
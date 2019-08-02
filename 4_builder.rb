# gem install builder
require 'builder'

xml = Builder::XmlMarkup.new(target: STDOUT, indent: 2)

xml.university(name: "JHU") do  
  xml.class('Ruby on Rails')  
  xml.class("Java on Grails")
end

# <university name="JHU">
#   <class>Ruby on Rails</class>
#   <class>Java on Grails</class>
# </university>

# Wait, but isn't class() a built-in method?


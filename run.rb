require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

zoo=Zoo.new("a","seattle") 
cat=Animal.new("cat", 20, "sara")
binding.pry
puts "done"

require 'TreeGenerator'
require 'rubygems'
require 'awesome_print'
#require 'ruby-prof'

arr = []
1000.times do
  arr << rand(100)
end
#r = treegen [5,7,2,1]
r = treegen arr
puts r.gv
ap r.to_a
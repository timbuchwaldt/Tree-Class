require 'TreeGenerator'
require 'rubygems'
require 'awesome_print'
#require 'ruby-prof'

#r = []
#1000.times do
#  r << rand(100)
#end
r = treegen [3,4,2,1]
#RubyProf.start
#r = treegen r
#result = RubyProf.stop

#printer = RubyProf::FlatPrinter.new(result)
#printer.print(STDOUT, 0)
puts r.gv
ap r
puts r.gv
#r.delete 3
#puts r.gv
#r.delete 2
#puts r.gv 
#r.delete 1
#puts r.gv
#File.open("test.gv", 'w+') {|f| f.write(t)}

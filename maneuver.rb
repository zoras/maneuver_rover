#!/usr/bin/ruby

require './lib/rover'

Rover.set_size(STDIN.gets().strip)

rover1 = Rover.new(STDIN.gets().strip)
rover1.move(STDIN.gets().strip)

rover2 = Rover.new(STDIN.gets().strip)
rover2.move(STDIN.gets().strip)

puts rover1.final_position
puts rover2.final_position

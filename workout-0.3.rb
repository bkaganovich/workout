#!/usr/bin/env ruby

# File: workout-0.3.rb
# Totals number of reps in pyramid levels exercise

#level
level = ARGV[0].to_i #level is first arg
unless ARGV.length > 0 #prompt for level if no arg given
  print "Enter pyramid level: "
  level = gets.to_i 
end

#pyramid sets
def sets(level)
  sets = (1..level).to_a + (1...level).to_a.reverse
  total = 0 #init total reps
  sets.each { |reps|
    print "#{reps} rep, " #current pyr level
    total += reps #accumulate total
    puts "total: #{total}" #total reps
  }
end

sets(level)

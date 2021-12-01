#!/usr/bin/env ruby

# File: log.rb
# Logs workout sets into file

require 'date'
$date = Date.today.to_s

#logging the workout sets to file
def append(filename, completed)
  fn = filename #record file
  ex = completed #completed workout set
  
  #write to record file
  def apnd(fn, ex)
    open(fn, 'a') { |f| #open file for appending
      f << ex #write to file
    }
    puts "Written to '#{File.expand_path(fn)}'" #verbose
  end
  
  if File.file?(fn) #today's file exists
    apnd(fn, ex) #write
  else
    File.new(fn, "w+") #create today's log
    apnd(fn, ex) #write 
  end
end

#prompt for completed reps
def reps
  print "Enter completed reps: "
  reps = gets.chomp #get input string without trailing newline
  return reps
end

#prompt for workout and append to record file
def workout
  filename = "records/#{$date}" #log file location
  puts "Hello, today is #{$date}." #display date
  workout = "" #init selection 

  begin #exception handling
    while workout != 0
      print "\nChoose workout [1=pushups/2=squats/3=calf raises]: "
      workout = gets.to_i
      case workout #exercise selection
      when 1
        pushups = reps #prompt for reps
        append(filename, "#{pushups} pushups\n")
      when 2
        squats = reps #prompt for reps
        append(filename, "#{squats} squats\n")
      when 3 
        calf_raises = reps #prompt for reps
        append(filename, "#{calf_raises} calf raises\n")
      when 0 #exit
        puts "\nEnd program"
        break        
      else
        puts "Invalid choice" #reprompt selection 
      end
    end
  rescue SignalException => e #ctrl+c exit
    puts "\n\nQuitting"
  end
end

workout #run main 

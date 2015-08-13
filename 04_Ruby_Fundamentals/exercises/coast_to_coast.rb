require 'pry'

def talent
  engineer = 'Kisha' #local variable
  san_francisco(engineer) #makes available to the new variable
  moscow(engineer)
end

def san_francisco(engineer)
  puts "#{engineer} is headed to SF. It's warm"
end

def moscow(engineer)
  puts "It's cold. #{engineer} is unavailable."
end

puts san_francisco("Michael Jordan")

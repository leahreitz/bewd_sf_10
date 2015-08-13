require 'pry'

def get_love_interest
  puts 'Who do you love?'
  love_interest = gets.strip
  capture_love_interest_response(love_interest) ##its ok this is out of order!
end

def capture_love_interest_response(love_interest)
  puts "Do you think about #{love_interest}?"
  puts "Answer 'Yes' or 'No'"
  user_answer = gets.strip.downcase
  puts get_valid_answer(user_answer, love_interest)
end

def get_valid_answer(user_answer, love_interest)
  case user_answer #needs to have a star
    when "yes"
      "You must love #{love_interest}! Tell them!"
    when "no"
      "Are you sure you love #{love_interest}? Think about this a little bit more."
    else
      puts "That's not a valid answer."
      puts "'Yes' or 'no', please. I'm a simple-minded computer."
      binding.pry
      capture_love_interest_response(love_interest)#this is recursion!
    end
end

### This is where we call methods to run our script
get_love_interest

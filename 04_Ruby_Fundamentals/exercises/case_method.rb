require 'pry'

def the_case(grade)
  case grade.downcase ##local variable
  when "a" ## basically same as if case === "a" then
    "You aced the class!"
  when "a"
    "You did a solid job."
  when "c", "d"
    "Sometimes a hard C or D is excellent."
  else
    "Stop drinking in my class!"
  end
end

puts the_case("d")

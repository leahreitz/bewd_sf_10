#Create 3 or more hashes with cars - include 5 keys
  #- brand, model, year, price, electric
#Create an array of hashes
#Iterate through the array using the `.each` method
#Practice using `if` && `unless` conditionals (print a special message when cars are good for the enviornment)
#*** BONUS **** create a `add_cars` method that takes an unlimited number of cars and transforms them into an array

require 'pry'

def show_all_cars(cars)
  cars.each do |car| #just memorize this...
    puts "This is a #{car[:brand]}. The model is #{car[:model]}, made in #{car[:year]}."
    puts "****** This car is great for the earth!" unless car[:is_electric] == false
    end
end

#write a method that accepts an unlimited number of cars (or arguments)
def add_cars(*all_cars)
  binding.pry
  all_cars
end


tesla = {brand: "Tesla", model: "Model X", year: 2016, price: 85000, is_electric: true}
subaru = {brand: "Subaru", model: "Forrester", year: 2013, price: 20000, is_electric: false}
toyota = {brand: "Toyota", model: "Prius", year: 2012, price: 49000, is_electric: true}
fiat = {brand: "Fiat", model: "Mini", year: 2014, price: 40000, is_electric: true}

# Approach 1:
# cars = [] #could be cars = array.new
# cars.push(tesla, subaru, toyota, fiat)
# show_all_cars(cars)

#Approach 2:
cars = add_cars(tesla, subaru, toyota, fiat)
show_all_cars(cars)

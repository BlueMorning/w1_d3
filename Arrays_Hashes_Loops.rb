# Homework

# A. Given the following data structure:
stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]


# 1. Add `"Edinburgh Waverley"` to the end of the array
# 2. Add `"Glasgow Queen St"` to the start of the array
# 3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
# 4. Work out the index position of `"Linlithgow"`
# 5. Remove `"Livingston"` from the array using its name
# 6. Delete `"Cumbernauld"` from the array by index
# 7. How many stops there are in the array?
# 8. How many ways can we return `"Falkirk High"` from the array?
# 9. Reverse the positions of the stops in the array
# 10. Print out all the stops using a for loop


# 1. Add `"Edinburgh Waverley"` to the end of the array
stops.push("Edinburgh Waverley")
p stops

# 2. Add `"Glasgow Queen St"` to the start of the array
stops.unshift("Glasgow Queen St")
p stops

# 3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
stops.insert(stops.find_index("Falkirk High")+1, "Polmont")
p stops

# 4. Work out the index position of `"Linlithgow"`
p stops.find_index("Linlithgow")

# 5. Remove `"Livingston"` from the array using its name
stops.delete("Livingston")
p stops

# 6. Delete `"Cumbernauld"` from the array by index
stops.delete_at(stops.find_index("Cumbernauld"))
p stops

# 7. How many stops there are in the array?
puts "The array contains #{stops.length} stops."

# 8. How many ways can we return `"Falkirk High"` from the array?
puts "1) With stops[2] : #{stops[2]}"
puts "2) With stops[-5] : #{stops[-5]}"
puts "3) With stops.find_index(\"Falkirk High\") : #{stops[stops.find_index("Falkirk High")]}"

# 9. Reverse the positions of the stops in the array
stops.reverse!
p stops

# 10. Print out all the stops using a for loop
def print_stops(stops_array)
  for stop in stops_array
    puts stop
  end
end

print_stops(stops)


## B. Given the following data structure:

  users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linlithgow",
      :pets => {
        "nemo" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "rupert" => :parrot
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        "colin" => :snake
      }
    },
  }

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
# 2. Get Erik's hometown
# 3. Get the array of Erik's favourite numbers
# 4. Get the type of Avril's pet Colin
# 5. Get the smallest of Erik's favourite numbers
# 6. Add the number `7` to Erik's favourite numbers
# 7. Change Erik's hometown to Edinburgh
# 8. Add a pet dog to Erik called "Fluffy"
# 9. Add yourself to the users hash


# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
puts users["Jonathan"][:twitter]

# 2. Get Erik's hometown
puts users["Erik"][:home_town]

# 3. Get the array of Erik's favourite numbers
puts users["Erik"][:favourite_numbers]

# 4. Get the type of Avril's pet Colin
puts users["Avril"][:pets]["colin"]

# 5. Get the smallest of Erik's favourite numbers
puts users["Erik"][:favourite_numbers][0]
puts users["Erik"][:favourite_numbers].min

# 6. Add the number `7` to Erik's favourite numbers
puts users["Erik"][:favourite_numbers].push(7)

# 7. Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
puts users["Erik"][:home_town]

# 8. Add a pet dog to Erik called "Fluffy"
puts users["Erik"][:pets]["Fluffy"] = :dog

# 9. Add yourself to the users hash
eric_hash = Hash.new
eric_hash[:twitter] = "ICanRunButCannotHide"
eric_hash[:favourite_numbers] = [7, 11, 45, 77]
eric_hash[:home_town] = "Fontainebleau"

pets_hash = Hash.new
pets_hash["Bob"] = :GoldenFish
pets_hash["Sophie"] = :Giraf
pets_hash["Ratatouille"] = :Rat

eric_hash[:pets] = pets_hash

users["Eric"] = eric_hash

puts users




# C. Given the following data structure:
united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  }, {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  }, {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]


# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).
# 3. Use a loop to print the names of all the countries in the UK.
# 4. Use a loop to find the total population of the UK.

# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
united_kingdom[1][:capital] = "Cardiff"
puts united_kingdom

# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast,
# and the population is 1,811,000).
hash_northern_ireland = Hash.new
hash_northern_ireland[:name] = "Northern Ireland"
hash_northern_ireland[:capital] = "Belfast"
hash_northern_ireland[:population] = 1811000
united_kingdom.push(hash_northern_ireland)
puts united_kingdom


# 3. Use a loop to print the names of all the countries in the UK.
def print_countries(array_countries)
  for hash_country in array_countries
    puts hash_country[:name]
  end
end

print_countries(united_kingdom)


# 4. Use a loop to find the total population of the UK.
def count_total_population(array_countries)
  total_population = 0
  for hash_country in array_countries
    total_population += hash_country[:population]
  end
  return total_population
end

puts "The total population is #{count_total_population(united_kingdom)} pepole"

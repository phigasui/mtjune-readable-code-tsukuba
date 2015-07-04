#!/usr/bin/ruby

recipe_file = File.open("recipe_data.txt", "r")

recipe_array = Array.new


while dish_name = recipe_file.gets
  recipe_array.push(dish_name.chomp)
end


recipe_array.each_with_index do |recipe_name, id|
  string_to_print = id.to_s + ": " + recipe_name
  print string_to_print + "\n"
end

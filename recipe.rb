#!/usr/bin/ruby

recipe_file = File.open("recipe_data.txt", "r")

while dish_name = recipe_file.gets
  print dish_name
end

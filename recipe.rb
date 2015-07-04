#!/usr/bin/ruby

require 'json'

$recipe_array = JSON.parse(File.open("recipe_data.json").read)



# idを指定してレシピを表示
def print_recipe(id)
  recipe_hash = $recipe_array[id]
  print recipe_hash["name"] + " " + recipe_hash["description"] + "\n"
end


# ユーザの入力
print "IDを入力してエンターを押してください. IDを指定しない場合はそのままエンターを押してください.\n"
user_input_string = gets.chomp


# 入力が無かった場合
if user_input_string == ""
  $recipe_array.each_with_index do |recipe_hash, id|
    print_recipe(id)
  end
end

# 入力があった場合
print print_recipe(user_input_string.to_i)

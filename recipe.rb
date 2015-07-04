#!/usr/bin/ruby


recipe_file = File.open("recipe_data.txt", "r")
recipe_array = Array.new

# レシピファイルを読み込み
while dish_name = recipe_file.gets
  recipe_array.push(dish_name.chomp)
end


# ユーザの入力
print "IDを入力してエンターを押してください. IDを指定しない場合はそのままエンターを押してください.\n"
user_input_string = gets.chomp


# 入力が無かった場合
if user_input_string == ""
  recipe_array.each_with_index do |recipe_name, id|
    string_to_print = id.to_s + ": " + recipe_name
    print string_to_print + "\n"
  end
end

# 入力があった場合
print recipe_array[user_input_string.to_i] + "\n"

#!/usr/bin/ruby
# coding: utf-8

require 'json'

# レシピのハッシュが入っている配列
$recipes_array = JSON.parse(File.open("recipe_data.json").read)


# idを指定してレシピを表示するメソッド
# レシピid -> void
def print_recipe(id, user_name)
  recipe_hash = $recipes_array[user_name][id]
  print((id+1).to_s + ": " +
        recipe_hash["name"] + " " + recipe_hash["description"] + "\n")
end


# ユーザの入力
puts "user_name: "
user_name = gets.chomp

print "IDを入力してエンターを押してください. IDを指定しない場合はそのままエンターを押してください.\n"
user_input_string = gets.chomp

if user_input_string == ""  # 入力が無かった場合
  # unless user_name in recipes_array.keys
  #   puts "user not found"
  #   exit()
  # end
  $recipes_array[user_name].each_with_index do |recipe_hash, id|
    print_recipe(id, user_name)
  end

else  # 入力があった場合

  print print_recipe(user_input_string.to_i, user_name)

end

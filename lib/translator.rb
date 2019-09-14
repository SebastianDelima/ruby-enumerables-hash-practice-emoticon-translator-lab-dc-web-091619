require"yaml"
require'pry'

def load_library(emoticons)
 hash = YAML.load_file(emoticons)
 new_hash = {"get_meaning" => {}, "get_emoticon" => {}}
 hash.each do |emoticon, values|
   new_hash["get_meaning"][values[1]] = emoticon
   new_hash["get_emoticon"][values[0]] = values[1]
   end
return new_hash
 end

def get_japanese_emoticon(file_path, emoticon )
hash = load_library(file_path)
new_hash = hash["get_emoticon"]
new_hash.each do |english|
  if english == emoticon do
   return english
    else
    return "Sorry"
    end
  end
 end


def get_english_meaning
  
end
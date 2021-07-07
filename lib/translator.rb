# require modules here
require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  
  library = {}
  library["get_meaning"] = {}
  library["get_emoticon"] = {}
  
  emoticons.each do |english, group|
    library["get_emoticon"][group.first] = group.last
    library["get_meaning"][group.last] = english
  end
  library
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  japanese_emoticon = library["get_emoticon"][emoticon]
  if japanese_emoticon
    return japanese_emoticon
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  english_emoticon = library["get_meaning"][emoticon]
  if english_emoticon
    return english_emoticon
  else
    return "Sorry, that emoticon was not found"
  end
end
# require modules here
require 'pry'
require 'yaml'

def load_library(file_path)
  dictionary = {
    "get_emoticon" => {},
    "get_meaning" => {}
  }
  data = YAML.load_file(file_path)
  data.each do |definition, languages|
    if !dictionary["get_meaning"][languages[1]]
      dictionary["get_meaning"][languages[1]] = ""
    end

    if !dictionary["get_meaning"][languages[1]] = definition
      dictionary["get_meaning"][languages[1]] = definition
    end
    
    if !dictionary["get_emoticon"][languages[0]]
      dictionary["get_emoticon"][languages[0]] = ""
    end

    if !dictionary["get_emoticon"][languages[0]] = languages[1]
      dictionary["get_emoticon"][languages[0]] = languages[1]
    end
  end
  dictionary
end

def get_japanese_emoticon(file_path, emoticon)
  return_emoticon = ""
  data = load_library(file_path)
  data.each do |key, value|
    value.each do |english_emoticon, japanese_emoticon|
      if emoticon == english_emoticon
        return_emoticon = japanese_emoticon
      end
    end
  end
  return_emoticon == "" ? "Sorry, that emoticon was not found" : return_emoticon
end


def get_english_meaning(file_path, emoticon)
  return_emoticon = ""
  data = load_library(file_path)
  data.each do |key, value|
    value.each do |english_emoticon, japanese_emoticon|
      if emoticon == japanese_emoticon
        return_emoticon = data["get_meaning"][japanese_emoticon]
      end
    end
  end
  return_emoticon == "" ? "Sorry, that emoticon was not found" : return_emoticon
end
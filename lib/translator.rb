require 'yaml'

def load_library(filePath)
  hash = YAML.load_file(filePath)
  hashCopy = {'get_meaning' => {}, 'get_emoticon' => {}}
  hash.each do |key, value|
    hashCopy['get_meaning'][value[1]] = key
    hashCopy['get_emoticon'][value[0]] = value[1]
  end
  hashCopy
end

def get_japanese_emoticon(filePath, emoticon)
  hash = load_library(filePath)
  if hash['get_emoticon'].include? emoticon
    return hash['get_emoticon'][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(filePath, emoticon)
  hash = load_library(filePath)
  if hash['get_meaning'].include? emoticon
    return hash['get_meaning'][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

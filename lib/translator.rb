require 'yaml'

def load_library(filePath)
  hash = YAML.load_file(filePath)
  hashCopy = {'get_meaning' => {}, 'get_emoticon' => {}}
  hash.each do |key, value|
    hashCopy['get_meaning'][value[1]] = key
    hashCopy['get_emoticon'][value[0]] = value[1]
=begin
    puts key
    puts value[0]
    puts value[1]
=end
  end
  hashCopy
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

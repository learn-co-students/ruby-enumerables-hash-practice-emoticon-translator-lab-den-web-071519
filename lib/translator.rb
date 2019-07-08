# require modules here
require "yaml"
require "pry"

def load_library(yml)
  emo = YAML.load_file('lib/emoticons.yml')
  list = {}
  emo.each do |meaning, emoti|
    if !list['get_meaning']
    list['get_meaning'] = {}
    end
    if !list['get_emoticon']
    list['get_emoticon'] = {}
    end
    emoti.each do |em|
    list['get_meaning'][em] = meaning
    list['get_emoticon'][emoti[0]] = emoti[1]
    end
  end
  list
end

def get_japanese_emoticon(yml, emoticon)
  load_library
  
end

def get_english_meaning
  # code goes here
end
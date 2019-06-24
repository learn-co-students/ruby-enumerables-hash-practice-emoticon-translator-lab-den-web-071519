require 'yaml'

def load_library(arg)
  library = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(arg).each do |meaning, emojis|
    eng, ja = emojis
    library["get_meaning"][ja] = meaning
    library["get_emoticon"][eng] = ja
  end
  p library
end

def get_japanese_emoticon(path, emoji)
  library = load_library(path)
  if library["get_emoticon"][emoji]
    ja_em = library["get_emoticon"][emoji]
    return ja_em
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoji)
  library = load_library(path)
  if library["get_meaning"][emoji]
     eng_def = library["get_meaning"][emoji]
     return eng_def
  end
  return "Sorry, that emoticon was not found"
end
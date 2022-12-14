#!/usr/bin/ruby 

def decode_char(char)
  hash = {".-"=> "A", "-..."=> "B", "-.-."=> "C", "-.."=> "D", "."=> "E", "..-."=> "F", "--."=> "G",
  "...."=> "H", ".."=> "I", ".---"=> "J", "-.-"=> "K", ".-.."=> "L", "--"=> "M", "-."=> "N", "---"=> "O", ".--."=> "P",
  "--.-"=> "Q", "..."=> "S", "-"=> "T", "..-"=> "U", "...-"=> "V", ".--"=> "W", "-..-"=> "X", "-.--"=> "Y", "--.."=> "Z",
  ".----"=> "1", "..---"=> "2", "...--"=> "3", "....-"=> "4", "....."=> "5", "-...."=> "6", "--..."=> "7", 
  "---.."=> "8", "----."=> "9", "-----"=> "0"}
  print(hash[char])
end

def decode_word(string)
  ar = string.split(/ /)
  ar.each{ |value| decode_char(value) }
  print(" ")
end

def decode(string)
ar = string.split(/ /)
ar.each{ |value| decode_word(value) }
end

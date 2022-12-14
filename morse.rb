def decode_char(char)
  hash = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
           '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
           '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V',
           '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3',
           '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
           '---..' => '8', '----.' => '9', '-----' => '0' }
   return (hash[char])
end

def decode_word(string)
  str = ""
  ar = string.split(/ /)
  ar.each { |value| str += decode_char(value) }
  return str
end

def decode(string)
  str = ""
  ar = string.split(/   /)
  ar.each { |value| str += decode_word(value) + " " }
  return str
end

decode('-- -.--   -. .- -- .')
decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

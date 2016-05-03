def caesar_cipher(string, shift_factor)
  ciphered_string, offset = "", 0
  string.each_char do |char|
    if char.match(/[[:alpha:]]/)
      offset = 64  if char.match(/[[:upper:]]/) 
      offset = 96 if char.match(/[[:lower:]]/)
      char = (((char.ord - offset) + shift_factor) % 26 + offset).chr
    end
    ciphered_string << char
  end
  return ciphered_string
end

puts caesar_cipher("What a String!", 5)
def caesar_cipher(string, shift_factor)
  upper_case_letters, lower_case_letters = ("A".."Z").to_a, ("a".."z").to_a
  alphabet, modified_string = [], ""
  string.each_char do |character|
    if upper_case_letters.include? character
      alphabet = upper_case_letters
    elsif lower_case_letters.include? character
      alphabet = lower_case_letters
    else
      modified_string << character
    end
    alphabet.each do |letter| 
      if character == letter
        modified_string << (alphabet[alphabet.index(letter) + (shift_factor - 26)])
       end
    end
  end
  return modified_string
end

puts caesar_cipher("What a string!", 5)
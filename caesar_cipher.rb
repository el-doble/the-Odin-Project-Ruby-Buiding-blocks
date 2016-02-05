def caesar_cipher(string, shift_factor)
  upper_case, lower_case = ("A".."Z").to_a, ("a".."z").to_a
  letters, modified_string = [], ""
  string.each_char do |character|
    if upper_case.include? character
      letters = upper_case
    elsif lower_case.include? character
      letters = lower_case
    else
      modified_string << character
    end
    letters.each do |letter| 
      if character == letter
        modified_string << (letters[letters.index(letter) + (shift_factor - 26)])
       end
    end
  end
  return modified_string
end

puts caesar_cipher("What a string!", 5)
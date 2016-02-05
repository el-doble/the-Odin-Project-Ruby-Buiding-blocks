def caesar_cipher(string, shift_factor)
  modified_string, upper_case, lower_case = "", ("A".."Z").to_a, ("a".."z").to_a
  string.split("").each do |character|
    if upper_case.include? character
      upper_case.each do |letter| 
        if character == letter
          modified_string << (upper_case[upper_case.index(letter) + (shift_factor - 26)])
         end
      end
    elsif lower_case.include? character
      lower_case.each do |letter|
        if character == letter
          modified_string << (lower_case[lower_case.index(letter) + (shift_factor - 26)])        
        end
      end
    else
      modified_string << character
    end
  end
  return modified_string
end

puts caesar_cipher("What a string!", 5)
def caesar_cipher(text, shift)
  code = []
  return "" unless text
  text.each_char do |letter|
    if ("a".."z").include?(letter) || ("A".."Z").include?(letter)
      shift.times do 
        if letter.ord == "z".ord
          letter = "a"
        elsif letter.ord == "Z".ord
          letter = "A"
        else
          letter = letter.next
        end
      end
    end
    code << letter
  end
  return code.join
end
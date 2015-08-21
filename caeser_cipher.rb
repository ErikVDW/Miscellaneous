def encrypt string, shift
  if shift > 25
    raise Exception.new('Shift should logically be less than 26.')
  end
  char_arr = string.split('') # char_arr = ['A' ,' ', 's', 'e', 'n', 't', 'e', 'n', 'c', 'e','.']
  char_arr.map do |char|
    char = char.ord
    if char >= 97 && char + shift <= 122 || char >= 65 && char + shift <= 90
      char += shift
    elsif char >= 97 && char <= 122
      over = (char + shift) % 122
      while over > 26 
        over -= 26
      end
      char = over + 96
    elsif char >= 65 && char <= 90
      over = (char + shift) % 122
      while over > 26 
        over -= 26
      end
      char = over + 64
    end
    char = char.chr
  end.join("")
end

def decrypt string, unshift
  if unshift > 25
    raise Exception.new('Unshift should logically be less than 26.')
  end
  char_arr = string.split('') # char_arr = ['E' ,' ', 'w', 'i', 'r', 'x', 'i', 'r', 'g', 'i','.']
  char_arr.map do |char|
    char = char.ord
    if char - unshift >= 97 && char <= 122 ||  char - unshift >= 65 && char <= 90
      char -= unshift
    elsif char >= 97 && char <= 122
      under = 97 - (char - unshift)
      while under > 26 
        under += 26
      end
      char = 123 - under
    elsif char >= 65 && char <= 90
      under = 65 - (char - unshift)
      while under > 26 
        under += 26
      end
      char = 91 - under
    end
    char = char.chr
  end.join("")
rescue Exception
  puts 'Shift should logically be less than 26.'
end
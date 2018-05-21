#write your code here
def translate (string)
  vowels = %w(a e i o u)
  @final = ''
  string.split(' ').each_with_index { |word, index|
    if vowels.include?(word[0])
      word += 'ay'
    else
      if word[0] == 'q'
        first = word[0..1]
        word[0..1]= ''
      else
        first = word[0]
        word[0]= ''
      end
      if vowels.include?(word[0])
        word += first + 'ay'
      else
        if word[0] == 'q'
          second = word[0..1]
          word[0..1]= ''
        else
          second = word[0]
          word[0]= ''
        end
        if vowels.include?(word[0])
          word += first + second + 'ay'
        else 
          third = word[0]
          word[0] = ''
          word += first + second + third + 'ay'
        end
      end
    end
    if index == 0 
      @final += word
    else
      @final += ' ' + word
    end
  }
  return @final
end
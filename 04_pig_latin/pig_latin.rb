#write your code here
def translate (string)
  vowels = %w(a e i o u)
  @final = ''
  @bandera = 0
  string.split(' ').each_with_index { |word, index|
    if word[0] == word[0].upcase
      @bandera = 1
      word = word.downcase
    end

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
      if @bandera == 1
        @final += word.upcase
        @bandera = 0
      else
        @final += word
      end
    else
      if @bandera == 1
        @final += ' ' + word.upcase
        @bandera = 0
      else
        @final += ' ' + word
      end
      
    end
  }
  return @final
end
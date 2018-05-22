class Book

  attr_accessor :title

  @concatenado = ''
  

  def title 
    @nocapitalize = %w(a an the for and nor but or yet so in of)
    @title.split(' ').each_with_index { |word, index| 
      if index == 0
        first = word[0].upcase
        word[0] = first
      else
        if !@nocapitalize.include?(word)
          first = word[0].upcase
          word[0] = first
        end
      end
      if index == 0
        @concatenado = @concatenado.to_s + word
      else 
        @concatenado += ' ' + word  
      end
    }
    return @concatenado
  end

end

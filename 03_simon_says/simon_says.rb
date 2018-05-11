#write your code here
def echo (word)
  "#{word}"
end

def shout (word)
  word = word.upcase
end

def repeat (word, iterate = 2)
  result = ''
  iterate.times do |i|
    (i > 0) ? result =  result + ' ' + word : result += word
  end
  result
end

def start_of_word (text, chars)
  text[0..chars-1]
end

def first_word (text)
  text.split(" ")[0]
end


def titleize (sentence)
  small = %w{a an and the or for of over}
  sentence.split.each_with_index.map{|word, index| small.include?(word) && index > 0 ? word : word.capitalize }.join(' ')

  # FAILED TRY, BUT ALSO, TRY AGAIN LATER
  # result = ''
  # smallw = %w(and over the)
  # sentence.index(' ') == nil ? result = sentence.capitalize : result = (sentence.split(' ').map(smallw.include ? sentence : &:capitalize).join(' '))
  # result
end
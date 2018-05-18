#write your code here
def translate (word)
  vowels = %w(a e i o u)
  if word[0].split.map { |char| char.include?vowels.to_s }
    word += 'ay'
  else
    word += word[0]
  end
  puts word
  return word
end

translate("aramo")

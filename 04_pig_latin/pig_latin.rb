#write your code here
def translate(sentence)
  sentence = sentence.split(' ')
  sentence.map! do |word|
    if word[0] == 'a' || word[0] == 'o' || word[0] == 'u' || word[0] == 'i' || word[0] == 'e'
      word = word.concat("ay")
    elsif word[0] == 'q' && word[1] == 'u'
      word.concat('quay')
      word = word[2..word.length-1]
    else
      while (word[0] != 'a' && word[0] != 'o' && word[0] != 'u' && word[0] != 'i' && word[0] != 'e')
        if word[0] == 'q' && word[1] == 'u'
          word.concat(word[0])
          word.concat(word[1])
          word = word[2..word.length-1]
        else
          word.concat(word[0])
          word = word[1..word.length-1]
        end
      end
      word.concat("ay")
    end
  end
  return sentence.join(" ")
end


=begin
  for word in @str
    puts word
    if word[0] == 'a' || word[0] == 'o' || word[0] == 'u' || word[0] == 'i' || word[0] == 'e'
      word = word.concat("ay")
    else
      puts word
      while (word[0] != 'a' && word[0] != 'o' && word[0] != 'u' && word[0] != 'i' && word[0] != 'e')
        word.concat("lel")
        word.concat("ay")
        word = word[1..word.length-1]
      end
      puts word
      word = word.concat("lelele")
      word = word.concat("ay")
      puts word
    end
  end
  return @str.join(" ")
end

=end

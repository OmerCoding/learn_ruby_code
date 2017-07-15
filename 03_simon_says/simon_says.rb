#write your code here
def echo(sayin)
  return sayin
end


def shout(sayin)
  return sayin.upcase
end


def repeat(sayin, num = 2)
  @str = (sayin + " ") * num
  @len = @str.length
  @str = @str[0...(@len - 1)]
  return @str
end


def start_of_word(word, size)
  return word[0..(size - 1)]
end


def first_word(sentence)
  @word = ''
  for c in 0..(sentence.length - 1)
    if sentence[c] != ' '
      @word += sentence[c]
    else
      break
    end
  end
  return @word
end


def titleize(sentence)
  @sec = sentence.split(" ")
  @sec[0] = @sec[0].capitalize
    for w in 0..@sec.length - 1
      if @sec[w] != 'and' && @sec[w] != 'the' && @sec[w] != 'over' #these are small words..
        @sec[w] = @sec[w].capitalize
      end
    end
  return @sec.join(" ")
end

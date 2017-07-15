#write your code here
def add(a , b)
  return a + b
end

def subtract (a , b)
  return a - b
end

def sum(arr)
  @sum = 0
  for i in arr
    @sum += i
  end
  return @sum
end

def factorial(a , b)
  return a ** b
end

def multiply(arr)
  @mul = 1
  for i in arr
    @mul *= i
  end
  return @mul
end

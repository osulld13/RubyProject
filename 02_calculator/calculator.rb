def add(num1, num2)
  return num1 + num2
end

def subtract(num1, num2)
  return num1 - num2
end

def sum(nums)
  if (nums == [])
    0
  else
    nums.inject { | accum, num | accum + num }
  end
end

def multiply(nums)
  nums.inject { | accum, num | accum * num }
end

def power(num1, num2)
  return num1 ** num2
end

def factorial(num)
  if (num == 0)
    0
  elsif (num == 1)
    1
  else
    num * factorial(num -1)
  end
end

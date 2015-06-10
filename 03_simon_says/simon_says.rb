def echo(arg)
  arg
end

def shout(arg)
  arg.upcase
end

def repeat(arg, num = 2)
  arg + (" " + arg) * (num - 1)
end

def start_of_word(arg, num)
  arg[0, num]
end

def first_word(arg)
  arg.split[0]
end

def titleize(arg)
  arg = arg.split
  arg[0].capitalize!
  arg[1 .. -1].each { |i|
    if(!["and", "over", "the"].include? i)
      i.capitalize!
    end
  }
  arg.join(" ")
end

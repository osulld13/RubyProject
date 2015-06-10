def translate(arg)
  arg = arg.split
  arg.each_index { |i|
    if (["a", "e", "i", "o", "u"].include? arg[i][0] )
      arg[i] = arg[i] + "ay"
    elsif((!["a", "e", "i", "o", "u"].include?(arg[i][0]) || arg[0 .. 1] == "qu")  &&
          (!["a", "e", "i", "o", "u"].include?(arg[i][1]) || arg[1 .. 2] == "qu") &&
          (!["a", "e", "i", "o", "u"].include?(arg[i][2]) || arg[2 .. 3] == "qu"))
      arg[i] = arg[i][3..-1] + arg[i][0..2] + "ay"
    elsif(((!["a", "e", "i", "o", "u"].include?(arg[i][0]) || arg[0 .. 1] == "qu"))  && ((!["a", "e", "i", "o", "u"].include?(arg[i][1]) || arg[1 .. 2] == "qu")))
      arg[i] = arg[i][2..-1] + arg[i][0..1] + "ay"
    else
      arg[i] = arg[i][1..-1] + arg[i][0] + "ay"
    end
  }
  arg.join(" ")
end

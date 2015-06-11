class Book
  attr_accessor :title

  def title
    words = ["the", "a", "an", "in", "of", "and"]
    @title.capitalize!
    @title = @title.split(" ").map!{ |i|
      if (!words.include?(i))
        i.capitalize
      else
        i
      end
    }.join(" ")
  end
end

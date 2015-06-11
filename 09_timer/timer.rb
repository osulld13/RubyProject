class Timer
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
  end

  def time_string
    @time_string = "#{
      hrs = @seconds/(60**2)
      if hrs < 10
        "0" + hrs.to_s
      else
        hrs.to_s
      end
    }:#{
      mins = (@seconds/(60))%60
      if mins < 10
        "0" + mins.to_s
      else
        mins.to_s
      end
    }:#{
      secs = @seconds%60
      if secs < 10
        "0" + secs.to_s
      else
        secs.to_s
      end
    }"
  end

end

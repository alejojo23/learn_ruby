class Timer

  require 'date'
  #write your code here
  attr_accessor :seconds, :time_string

  def initialize seconds = 0 
    @seconds =  seconds
  end

  def time_string
    @time_string = Time.at(@seconds).utc.strftime("%H:%M:%S")
  end

end

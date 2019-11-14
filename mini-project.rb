require 'rubygems'

require 'sinatra'

get '/' do 
  homepage(standard_time)
end

def homepage(standard_time)
  "Automation for the people!, it's #{standard_time} and its time to party!"
end

def standard_time
 time = Time.now
  time.strftime("%A %b-%d-%y %H:%M:%S %p")
end


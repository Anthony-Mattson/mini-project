require 'rubygems'

require 'sinatra'

get '/' do 
  homepage(standard_time)
end

def homepage(standard_time)
  "Automation for the people!, it's #{standard_time} and time to party!"
end

def standard_time
  Time.now
end


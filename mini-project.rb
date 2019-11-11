require 'sinatra'
get '/' do
  "Automation for the people!"
end

time = Time.new
puts time.strftime("%A %b-%d-%y %H:%M:%S %p")
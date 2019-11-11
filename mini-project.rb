require 'sinatra'
get '/' do
   "Automation for the people!"
end  

get '/' do
  time.strftime("%A %b-%d-%y %H:%M:%S %p")
end  
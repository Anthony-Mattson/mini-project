require 'sinatra'
time = Time.new
get '/' do
   "Automation for the people!"
   time.strftime("%A %b-%d-%y %H:%M:%S %p")
end  
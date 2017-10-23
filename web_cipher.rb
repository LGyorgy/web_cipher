require "sinatra"
require "sinatra/reloader" if development?
require "./caesar_cipher"

get "/" do
 caesar_cipher("Hello World!", 3)  
end
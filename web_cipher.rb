require "sinatra"
require "sinatra/reloader" if development?
require "./caesar_cipher"

get "/" do
  text = params[:text]
  shift = params[:shift].to_i
  msg = caesar_cipher(text, shift)
  erb :index, :locals => { msg: msg }
end
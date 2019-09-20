require 'sinatra'
require 'haml'

# cerner_2^5_2019

get '/' do
  page = %{
%div
  %h1{:style=> "font-family: sans-serif; font-size: 2em;"}="Hello World!"
  %h2{:style=> "margin: 5px; font-family: sans-serif; font-size: 1.5em;"}="sinatra"
  }
  haml page
end

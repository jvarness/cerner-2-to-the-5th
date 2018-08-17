# cerner_2^5_2017
require "kemal"

get "/" do |env|
  "Hello " + System.hostname + ", has your human donated to First Hand recently?"
end

Kemal.run 8080
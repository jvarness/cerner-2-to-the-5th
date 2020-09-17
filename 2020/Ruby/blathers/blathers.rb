require 'net/http'
require 'json'
# cerner_2^5_2020

random_bug = Random.rand(1...80)
url = URI("https://acnhapi.com/v1/bugs/#{random_bug}")
response = Net::HTTP.get_response(url)
body = JSON.parse(response.body)
bug_name = body["name"]["name-USen"]

puts body["catch-phrase"]
puts "\r\nBlathers had this to say about my #{bug_name}:\r\n\r\n"
puts body["museum-phrase"]

import random

# cerner_2^5_2019

randomize()

let responses = [
  "Outlook foggy, try again later",
  "Absolutely",
  "No, never",
  "I'm not sure, actually",
  "That will probably happen",
  "I don't think you want to know"
]


echo "Ask me anything you'd like ~> "
discard readLine(stdin)

let answer = sample(responses)
echo answer & "\r\n"

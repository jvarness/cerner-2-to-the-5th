# cerner_2^5_2017
# Make your hubot a 2^5 mascot!
module.exports = (robot) ->
  robot.hear /(2|two)\W*(to\W*the|\^)\W*(5|fifth)/i, (msg) ->
    msg.send "What can you do in 32 lines of code?"

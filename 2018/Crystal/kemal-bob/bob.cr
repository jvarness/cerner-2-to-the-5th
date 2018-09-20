require "kemal"
# cerner_2^5_2018
ws "/bob" do |socket|
  socket.on_message do |message|
    message = message.strip
    if message.empty?
      socket.send "Fine. Be that way!"
    elsif message.ends_with?('?') && message.upcase == message
      socket.send "Calm down, I know what I'm doing!"
    elsif message.ends_with?('?')
      socket.send "Sure."
    elsif message.upcase == message
      socket.send "Whoa, chill out!"
    else
      socket.send "Whatever."
    end
  end
end

Kemal.run 3000
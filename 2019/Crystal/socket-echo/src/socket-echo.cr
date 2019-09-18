require "kemal"
# cerner_2^5_2019
ws "/" do |socket|
  socket.send "Say anything you want! I'll say it back"
  socket.send "Say 'exit' to quit"

  socket.on_message do |message|
    if (message <=> "exit") == 0
      socket.send "Ok, see ya!"
      socket.close
      Kemal.stop
    else
      socket.send "You said: #{message}"
    end
  end
end

Kemal.run

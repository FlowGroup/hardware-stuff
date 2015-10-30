#!/usr/bin/env ruby

require 'socket'

MY_PATH = File.expand_path(File.dirname(__FILE__))
PORT = 6000

loop do
  begin
    Socket.udp_server_loop(PORT) do |msg, msg_src|
      File.open("#{MY_PATH}/data/#{Time.now.to_i}.#{rand}.udp", 'w+') do |f|
        f.puts msg_src.remote_address.inspect
        f.puts msg.inspect
      end
    end
  rescue Exception => ex
    File.open("/var/log/telegram_server_error.log", 'a+') do |f|
      f.puts "#{Time.now} : #{ex.inspect}"
    end
    sleep 0.1
  end
end

#!/usr/bin/env ruby

#
# Download environmental data of China
#

require 'net/http'
require 'uri'

MY_PATH = File.expand_path(File.dirname(__FILE__))
URL = "http://www.pm25.in/api/querys/all_cities.json?token=KFwJgzMESmsGu8H8npKo"

loop do
  begin
    txt = ''
    response = Net::HTTP.get_response(URI.parse(URL))
    case response
    when Net::HTTPSuccess
      txt = response.body
    else
      txt = "error"
    end

    File.open("#{MY_PATH}/data/#{Time.now.to_i}.json", "w+") do |f|
      f.puts txt
    end
  rescue SocketError
    File.open("/var/log/pm25in_error.log", 'a+') do |f|
      f.puts "#{Time.now} : Error: HTTP data not available"
    end
  end

  # 60 sec * 30 (1/2 hour)
  sleep 60 * 30
end


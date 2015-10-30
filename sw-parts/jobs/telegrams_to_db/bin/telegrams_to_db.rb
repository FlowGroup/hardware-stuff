#!/usr/bin/env ruby

#
# Loads telegrams from a directory into a database
# 

RAILS_ENV="production"

require 'fileutils'

start_time = Time.now

MY_PATH = File.expand_path(File.dirname(__FILE__))
require "#{MY_PATH}/../../../ux/config/environment.rb"
require "#{MY_PATH}/../lib/telegrams_to_db.rb"

TELEGRAM_FOLDER = ARGV[0]

raise ArgumentError.new('No telegram folder provided.') if TELEGRAM_FOLDER.nil?
raise ArgumentError.new('Telegram folder does not exist.') unless Dir.exists?(TELEGRAM_FOLDER)

telegram_count_ok = 0
telegram_count_ko = 0
telegram_failure = 0
current_dt = Time.now
telegrams = Dir.entries(TELEGRAM_FOLDER).map do |fn| 
  next unless validate_fn(fn)
  f_da, ip, port, dt = parse_telegram(TELEGRAM_FOLDER, fn)
  next if (dt + 60) >= current_dt

  begin
    if save_telegram(f_da, dt, ip, port)
      # sucessfully saved in DB
      FileUtils::rm_rf "#{TELEGRAM_FOLDER}/#{fn}"
      telegram_count_ok += 1
    else
      # issue during saving
      telegram_count_ko += 1
    end
  rescue
    telegram_failure += 1
  end
end

puts "[telegrams_to_db.rb:#{Time.now.strftime "%Y-%m-%d %H:%M"}];#{Time.now - start_time};#{telegram_count_ok};#{telegram_count_ko};#{telegram_failure}"

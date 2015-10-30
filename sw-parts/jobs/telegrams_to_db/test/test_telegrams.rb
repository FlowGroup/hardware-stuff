require 'test/unit'

require 'telegrams_to_db'

MY_PATH = File.expand_path(File.dirname(__FILE__))

class TelegramTest < Test::Unit::TestCase
  IP = '221.179.163.146'
  PORT = '42480'
  DATA = ["Stat", "Cube01", "peng", "sdfsdfsdfsdf", 
                  "6942", "Appartment", "Livingroom", "Cube01", "10.255.1.1",
                  "res", "res", "res", "avg", "0.60", "59.50", "1.40", "102.80",
                  "7", "", "", "45", "45", "24.43", "76.03", "34.84", "13",
                  "14", "14", "14", "EOT"]
  TIMESTAMP = 1416423006
  FILE_NAME = '1416423006.0.8171890062168324.udp'

  def test_parse_telegram
    data, ip, port, dt = parse_telegram("#{MY_PATH}", FILE_NAME)

    assert_equal IP, ip
    assert_equal PORT, port
    assert_equal DATA, data
    assert_equal TIMESTAMP, dt.to_i
  end

  def test_insert_telegram
    assert_true(File.exists?("#{MY_PATH}/test_data/#{FILE_NAME}"))
    ret = `#{MY_PATH}/../bin/telegrams_to_db.rb test/test_data`
    assert_match /\;1\;0\;0$/, ret
    assert_true(!File.exists?("#{MY_PATH}/test_data/#{FILE_NAME}"))
  end
end

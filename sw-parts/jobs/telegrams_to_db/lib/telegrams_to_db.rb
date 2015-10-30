def validate_fn(fn)
  fn =~ /\.udp$/
end

def parse_telegram(dir, fn) 
  ts = fn.split('.')[0]
  dt = Time.at(ts.to_i)

  # read telegram
  f_content = File.read("#{dir}/#{fn}")

  # extract IP and Port
  f_addr = f_content.lines[0].split(' ')[1].split(':')
  ip = f_addr[0]
  port = f_addr[1]

  # extract telegram content
  f_csv = f_content.lines[1].strip.gsub('"', '')
  f_da = f_csv.split(';')

  [f_da, ip, port, dt]
end

# save a telegram in the database
def save_telegram data, dt, ip, port
  telegram_params = {
    "ip"=>ip,
    "port"=>port,
    "reported_on(1i)"=> dt.year.to_s,
    "reported_on(2i)"=> dt.month.to_s,
    "reported_on(3i)"=> dt.day.to_s,
    "reported_on(4i)"=> dt.hour.to_s,
    "reported_on(5i)"=> dt.min.to_s,
    "telegram_type"=> data[0],
    "model"=> data[1],
    "user"=> data[2],
    "user_hash"=> data[3],
    "telegram_cycle_counter"=> data[4],
    "location"=> data[5],
    "group"=> data[6],
    "unit"=> data[7],
    "lan_ip"=> data[8],
    "ext_pm25_sensor"=> data[13],
    "ext_pm1_sensor"=> data[14],
    "int_pm25_sensor"=> data[15],
    "int_pm1_sensor"=> data[16],
    "sensor_board_cycle_counter"=> data[17],
    "ext_tacho_sensor_fan"=> data[18],
    "int_tacho_sensor_fan"=> data[19],
    "fan_speed_setting"=> data[20],
    "fan_target_speed"=> data[21],
    "temperature_celsius"=> data[22],
    "temperature_fahrenheit"=> data[23],
    "humidity_percentage"=> data[24],
    "tacho_primary_fan_0"=> data[25],
    "tacho_primary_fan_1"=> data[26],
    "tacho_primary_fan_2"=> data[27],
    "tacho_primary_fan_3"=> data[28]
  }

  telegram = Telegram.new(telegram_params)
  telegram.save
end

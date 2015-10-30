#!/usr/bin/env ruby

loop do
  `RAILS_ENV=production /root/climatech.cn/jobs/telegrams_to_db/bin/telegrams_to_db.rb /root/climatech.cn/telegram_server/data/ >> /var/log/telegrams_to_db_result.log`
  sleep 60
end

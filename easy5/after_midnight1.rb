HOURS_IN_DAY = 24
MINS_IN_HOUR = 60
MINS_IN_DAY = HOURS_IN_DAY * MINS_IN_HOUR

def time_of_day(number)
  hour, minute = number.divmod(MINS_IN_DAY)
  hour, minute = minute.divmod(MINS_IN_HOUR)
  format('%.2d:%.2d', hour, minute)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

HOURS_IN_DAY = 24
MINS_IN_HOUR = 60
MINS_IN_DAY = HOURS_IN_DAY * MINS_IN_HOUR

def after_midnight(string)
  hour, minute = string.split(":")
  hour = 0 if hour == '24'
  total = minute.to_i + (hour.to_i * MINS_IN_HOUR)
end

def before_midnight(string)
  return 0 if after_midnight(string) < 60
  MINS_IN_DAY - after_midnight(string)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

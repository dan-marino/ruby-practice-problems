DEGREE = "\xC2\xB0"
def dms(number)
  rotations, remainder = number.divmod(360)
  degree, remainder = remainder.divmod(1)

  minute = remainder * 60
  minute, remainder = minute.divmod(1)

  second = remainder * 60

  format("%02d\xC2\xB0%02d'%02d\"", degree, minute, second)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
puts dms(400)
puts dms(-40)
puts dms(-420)
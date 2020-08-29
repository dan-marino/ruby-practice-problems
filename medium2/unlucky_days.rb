def friday_13th(year)
  month = (1..12).to_a
  count = 0
  unlucky = 0
  12.times do
    t = Time.local(year, month[count], 13)
    unlucky += 1 if t.friday?
    count += 1
  end
  unlucky
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
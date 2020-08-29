class Integer
  def to_roman
    arr = self.digits

    arr.map.with_index do |dig, ind|
      next if dig.zero?

      ten = set(ind)[2]
      five = set(ind)[1]
      one = set(ind)[0]

      if dig < 5
        dig == 4 ? one.concat(five) : one * dig
      elsif dig > 5
        dig == 9 ? one.concat(ten) : five.concat(one*(dig-5))
      else
        five
      end
    end.reverse.join
  end

  def set(place)
    case place
    when 0 then %W(I V X)
    when 1 then %W(X L C)
    when 2 then %W(C D M)
    when 3 then %W(M)
    end
  end
end

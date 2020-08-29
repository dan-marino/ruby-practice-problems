require 'pry'

class BeerSong

  def verse(num)
    plural_now, plural_soon = 's', 's'
    plural_soon = '' if num == 2
    plural_now = '' if num == 1

    num == 1 ? next_num = 'no more' : next_num = num - 1
    num == 1 ? amount = 'it' : amount = 'one'


    if num.zero?
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{num} bottle#{plural_now} of beer on the wall, #{num} bottle#{plural_now} of beer.\n" \
      "Take #{amount} down and pass it around, #{next_num} bottle#{plural_soon} of beer on the wall.\n"
    end
  end

  def verses(*vrs)
    lines = (vrs.flatten.last..vrs.flatten.first).to_a.reverse

    lines.map { |line| verse(line).join("\n")
  end

  def lyrics
    verses(99, 0)
  end
  
end

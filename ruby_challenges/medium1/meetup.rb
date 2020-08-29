require 'date'
require 'pry'

class Meetup
  DATES = { first: (1..7).to_a, second: (2..14).to_a,
               teenth: (13..19).to_a, third: (8..21).to_a,
               fourth: (15..28).to_a, last:(22..31).to_a }.freeze

  attr_reader :month, :year
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    date = DATES.values_at(schedule).first.select do |num|
      Time.new(year, month, num).send("#{weekday}?")
    end

    if month == 2 && schedule == :last
      date = date.first
    elsif [4, 6, 9, 11].include?(month) && schedule == :last && date.last > 30
      date = date.first
    else
      date = date.last
    end

    Date.new(year, month, date)
  end
end

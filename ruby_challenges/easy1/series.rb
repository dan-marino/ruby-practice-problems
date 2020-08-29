class Series
  def initialize(str)
    @str = str
    @arr = str.split('').map(&:to_i)
  end
  
  def slices(n)
    raise ArgumentError if n > arr.size

    arr.map.with_index do |_, ind|
      next if ind + n > arr.length
      arr[ind, n]
    end.compact
  end

  private

  attr_reader :arr, :str
end

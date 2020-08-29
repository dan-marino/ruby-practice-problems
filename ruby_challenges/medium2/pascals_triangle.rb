class Triangle
  attr_accessor :lines
  def initialize(lines)
    @lines = lines
  end

  def rows
    triangle = []
    1.upto(lines) do |num|
      current_row = []

      1.upto(num) do |ind|
        current_row.empty?
          current_row << 1
        else
          current_row << triangle[num-2][ind-2, 2].sum
        end
      end
      triangle << current_row
    end
    triangle
  end
end

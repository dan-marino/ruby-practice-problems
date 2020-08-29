# modify the Tree class to support the methods of Enumerable

class Tree
  include Enumerable

  def each
    # ...
  end

  def <=>(other)
    # ...
  end
end

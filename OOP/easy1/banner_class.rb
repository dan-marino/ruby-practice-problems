#Behold this incomplete class for constructing boxed banners.
#Complete this class so that the test cases shown below work as intended. 
#You are free to add any methods or instance variables you need. 
#However, do not make the implementation details public.

#You may assume that the input will always fit in your terminal window.

class Banner
  
  def initialize(message, width)
    @message = message
    @width = width
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def length_plus_width
    @width.even? ? @message.size + @width : @message.size + @width + 1
  end

  def half_width
    @width.even? ? @width / 2 : (@width / 2.0).ceil 
  end

  def horizontal_rule
    "+#{'-' * length_plus_width}+"
  end

  def empty_line
    "|#{' ' * length_plus_width}|"
  end

  def message_line
    "|#{' ' * half_width}#{@message}#{' ' * half_width}|"
  end
end

banner = Banner.new('To boldly go where no one has gone before.', 5)
puts banner

banner = Banner.new('', 11)
puts banner
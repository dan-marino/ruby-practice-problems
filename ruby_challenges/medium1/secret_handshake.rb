class SecretHandshake
  attr_reader :num
  def initialize(num)
    @num = num.to_i
  end

  SECRETS = { 1 => 'wink', 10 => 'double blink', 
              100 => 'close your eyes', 1000 => 'jump' }

  def commands
    arr = num.to_s(2).chars.map(&:to_i)
    mult = arr.size
    reverse = false

    code = arr.map do |dig| 
      char = dig*10
      mult -= 1
      next if char.zero?
      reverse = true if char**mult == 10000
      SECRETS[char**mult]
    end.compact
    
    reverse ? code : code.reverse
  end  
end

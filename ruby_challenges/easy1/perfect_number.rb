class PerfectNumber
  
  def self.classify(num)
    raise RuntimeError if num <=0

    mults = (1..num/2).to_a.select { |dig| (num % dig).zero? }.sum

    case mults
    when num then 'perfect'
    when 1 then 'deficient'
    else 'abundant'
    end
  end
end
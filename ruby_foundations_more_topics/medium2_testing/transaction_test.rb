require 'minitest/autorun'
require "minitest/reporters"

Minitest::Reporters.use!

require_relative 'transaction'

class TransactionTest < Minitest::Test
  
  def test_prompt_for_payment
    trans = Transaction.new(50)
    input = StringIO.new("50\n")  
    output = StringIO.new

    trans.prompt_for_payment(input: input, output: output)
    assert_equal(50, trans.amount_paid)
  end  
  
end
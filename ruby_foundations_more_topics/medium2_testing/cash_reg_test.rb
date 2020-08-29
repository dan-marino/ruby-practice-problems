require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'cash_reg'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @machine = CashRegister.new(50)
    @trans = Transaction.new(50)
    @trans.amount_paid = 60
  end
  
  def test_accept_money
    @machine.accept_money(@trans)
    assert_equal(110, @machine.total_money)
  end

  def test_change
    assert_equal(10, @machine.change(@trans))
  end

  def test_give_receipt
    assert_output("You've paid $50.\n") { @machine.give_receipt(@trans) }
  end
end
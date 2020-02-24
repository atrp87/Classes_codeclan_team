require('minitest/autorun')
require('minitest/reporters')
require_relative('../bank_account')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestBankAccount < MiniTest::Test

  def test_get_holder_name()
    bank_account = BankAccount.new("Chris", 1000, "Business")
    assert_equal("Chris", bank_account.holder_name())
  end

  def test_get_balance()
    bank_account = BankAccount.new("Chris", 1000, "Business")
    assert_equal(1000, bank_account.balance)
  end

  def test_get_type()
    bank_account = BankAccount.new("Chris", 1000, "Business")
    assert_equal("Business", bank_account.type)
  end

  def test_set_holder_name()
    bank_account = BankAccount.new("Chris", 1000, "Business")
    bank_account.holder_name("Keith")
    assert_equal("Keith", bank_account.holder_name)
 end

  def test_pay_into_account()
    bank_account = BankAccount.new("Chris", 1000, "Business")
      bank_account.pay_in(1000)
    assert_equal(2000, bank_account.balance)
  end

  def test_direct_pay__business()
    bank_account = BankAccount.new("Chris", 1000, "Business")
      bank_account.pay_out(50)
    assert_equal(950, bank_account.balance)
  end

  def test_account__personal type()
    bank_account = BankAccount.new("Chris", 1000, "Business")
      bank_account.pay_type(10)
    assert_equal(990,bank_account.balance)

end

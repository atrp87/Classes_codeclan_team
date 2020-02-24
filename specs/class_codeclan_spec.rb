require('minitest/autorun')
require('minitest/reporters')
require_relative('../class_codeclan')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Test_CodeClan < MiniTest::Test

  def test_name()
    test_name = CodeClan.new("chris", "e38", "I can talk", "I love Ruby")
    assert_equal("chris", test_name.name)
  end

  def test_cohort()
    test_cohort = CodeClan.new("chris", "e38", "I can talk", "I love Ruby")
    assert_equal("e38", test_cohort.cohort)
  end

  def test_talk()
    test_talk = CodeClan.new("chris", "e38", "I can talk", "I love Ruby")
    assert_equal("I can talk", test_talk.talk)
  end

  def test_fave()
    test_fave = CodeClan.new("chris", "e38", "I can talk", "I love Ruby")
    assert_equal("I love Ruby", test_fave.fave)
  end

  def test_change_name()
      test_change_name = CodeClan.new("chris", "e38", "I can talk", "I love Ruby")
      test_change_name.name = "Keith"
      assert_equal("Keith", test_change_name.name)
  end

  def test_change_cohort()
      test_change_cohort = CodeClan.new("chris", "e38", "I can talk", "I love Ruby")
      test_change_cohort.cohort = "Keith"
      assert_equal("Keith", test_change_cohort.cohort)
  end

    def test_win()
      test_win =


end

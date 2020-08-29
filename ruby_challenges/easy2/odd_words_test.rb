require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'odd_words'

class OddWordsTest < Minitest::Test

  def test_basic_switch
    str = "hello and how are you"
    sentence = OddWords.new(str)
    expected = "hello dna how era you."
    actual = sentence.make_odd

    assert_equal(expected, actual)
  end

  def test_extra_spaces
    str = "hello     and how    are    you"
    sentence = OddWords.new(str)
    expected = "hello dna how era you."
    actual = sentence.make_odd

    assert_equal(expected, actual)
  end

  def test_long_words
    str = "what abbreviation is thewqqiifjssao"
    sentence = OddWords.new(str)
    expected = "what noitaiverbba is oassjfiiqqweht."
    actual = sentence.make_odd

    assert_equal(expected, actual)
  end

  def test_numbers
    str = "number 123 word numb3r"
    sentence = OddWords.new(str)
    expected = "number 321 word r3bmun."
    actual = sentence.make_odd

    assert_equal(expected, actual)
  end

  def test_different_case
    str = "How aRe yOU doinG"
    sentence = OddWords.new(str)
    expected = "How eRa yOU Gniod."
    actual = sentence.make_odd

    assert_equal(expected, actual)
  end

  def test_ends_with_period
    str = "This ends in a period."
    sentence = OddWords.new(str)
    expected = "This sdne in a period."
    actual = sentence.make_odd

    assert_equal(expected, actual)
  end

  def test_ends_with_period_last_word_odd
    str = "This test ends in a period."
    sentence = OddWords.new(str)
    expected = "This tset ends ni a doirep."
    actual = sentence.make_odd

    assert_equal(expected, actual)
  end

  def test_text_ends_with_black_space
    str = "there's a lot of blank space    "
    sentence = OddWords.new(str)
    expected = "there's a lot fo blank ecaps."
    actual = sentence.make_odd

    assert_equal(expected, actual)
  end

  def test_commas_dont_switch_places
    str = "wait. please, don't go, Jen"
    sentence = OddWords.new(str)
    expected = "wait. esaelp, don't og, Jen."
    actual = sentence.make_odd

    assert_equal(expected, actual)
  end

  def test_ends_with_multiple_periods
    str = "this is a big dramatic pause..."
    sentence = OddWords.new(str)
    expected = "this si a gib dramatic esuap."
    actual = sentence.make_odd

    assert_equal(expected, actual)
  end

  def test_multiple_punctuation
    str = "welcome to the comma,,, land"
    sentence = OddWords.new(str)
    expected = "welcome ot the ammoc, land."
    actual = sentence.make_odd

    assert_equal(expected, actual)
  end
  
end
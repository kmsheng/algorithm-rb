require 'minitest/autorun'
require_relative '../p1_1'

class IsUniqTest < Minitest::Test

  def test_is_uniq
    assert is_uniq("abczz") == false
    assert is_uniq("abc")
  end
end

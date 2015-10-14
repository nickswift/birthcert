require 'minitest/autorun'
require 'birthcert/name'

class NameTest < Minitest::Test 
  def setup
    @name = Birthcert::Name.new
  end

  def test_first
    assert_kind_of Array, @name.first
  end

  def test_last
    assert_kind_of Array, @name.last
  end

  def test_full
    assert_kind_of String, @name.full
  end
end
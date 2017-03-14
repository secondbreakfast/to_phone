require 'minitest/autorun'
require 'to_phone'

class ToPhoneTest < Minitest::Test
  def test_us_number
    assert_equal "+12059360524", "205 936 0524".to_phone.to_s
  end

end
require 'minitest/autorun'
require 'to_phone'

class ToPhoneTest < Minitest::Test
  
  def test_valid_strings
    assert_equal "+12059360524", "205 936 0524".to_phone.raw
    assert_equal "+12059360524", "+12059360524".to_phone.raw
    assert_equal "+12059360524", "+1 205 936 0524".to_phone.raw
    assert_equal "+12059360524", "(205) 936-0524".to_phone.raw
    assert_equal "+12059360524", " (205) 936-0524 ".to_phone.raw
    assert_equal "+12059360524", "(205.936.0524)".to_phone.raw
    assert_equal "+12059360524", "+1 (205) 936-0524 ".to_phone.raw
  end

  def test_valid_integers
    assert_equal "+12059360524", 2059360524.to_phone.raw
  end

  def test_valid_floats
    assert_equal "+12059360524", 205936052.4.to_phone.raw
  end

  def test_nil_is_nil
    assert_nil nil.to_phone
  end

  def test_short_strings
    assert_nil "25936052".to_phone
    assert_nil "2593604".to_phone
    assert_nil "259360".to_phone
    assert_nil "25936".to_phone
    assert_nil "2593".to_phone
    assert_nil "259".to_phone
    assert_nil "25".to_phone
    assert_nil "2".to_phone
    assert_nil "".to_phone
  end

  def test_formatted
    assert_equal "(205) 936-0524", "+12059360524".to_phone.formatted
  end

end
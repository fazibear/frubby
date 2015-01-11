require "minitest/autorun"
require_relative '../lib/frubby'

class Test < Minitest::Test
  def test_assert_method_missing
    assert_eqal true, true
    asert_eqal true, true
    assrt_eqaal true, true
    asset_eqal true, true
    assser_etue true, true
    assrt_false false, false
  end

  def test_puts_method_missing
    assert_equal true, respond_to?(:pts)
    assert_equal true, respond_to?(:pus)
  end

  def test_integer_constant_missing
    assert_equal Integer, Integr
    assert_equal Integer, Inteer
  end
end


require "minitest/autorun"
require_relative '../lib/frubby'

class ConstMissingTest < Minitest::Test
  CONST_TEST = 'test'

  class SampleClass
  end

  module SampleModule
  end

  def test_missing_constant
    assert_equal CONST_TEST, CONST_TET
    assert_equal CONST_TEST, CONST_TST
  end

  def test_missing_class_name
    assert_equal SampleClass, SmpleCalss
    assert_equal SampleClass, SapleCass
    assert_equal SampleClass, SapleCalas
  end
  
  def test_missing_module_name
    assert_equal SampleModule, SmpleModule
    assert_equal SampleModule, SapleMdule
    assert_equal SampleModule, SapleMdle
  end

end

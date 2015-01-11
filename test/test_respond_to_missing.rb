require "minitest/autorun"
require_relative '../lib/frubby'

class RespondToMissingTest < Minitest::Test
  def sample_method
    'test'
  end
  
  def sample_method_with_argument(arg)
    "test #{arg}"
  end

  module SampleModule
    def self.sample_method
      'test'
    end
  end

  def test_missing_method_name
    assert_equal true, respond_to?(:smple_method)
    assert_equal true, respond_to?(:sample_mthod)
    assert_equal true, respond_to?(:sampe_method)
    assert_equal true, respond_to?(:sampe_mothod)
  end 
  
  def test_missing_method_name_with_argument
    assert_equal true, respond_to?(:smple_method_with_argmtn)
    assert_equal true, respond_to?(:smple_meod_with_argmtn)
    assert_equal true, respond_to?(:smple_method_with_argmtn)
    assert_equal true, respond_to?(:smple_methd_wth_argmtn)
    assert_equal true, respond_to?(:smple_method_with_agmtn)
  end 
  
  def test_missing_module_self_method_name
    assert_equal true, SampleModule.respond_to?(:smple_method)
    assert_equal true, SampleModule.respond_to?(:smple_metod)
    assert_equal true, SampleModule.respond_to?(:smple_method)
    assert_equal true, SampleModule.respond_to?(:smple_ethod)
    assert_equal true, SampleModule.respond_to?(:smple_methd)
  end
end


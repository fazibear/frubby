require "minitest/autorun"
require_relative '../lib/frubby'

class MethodMissingTest < Minitest::Test
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
    assert_equal sample_method, smple_method
    assert_equal sample_method, sample_mthod
    assert_equal sample_method, sampe_method
    assert_equal sample_method, sampe_mothod
  end 
  
  def test_missing_method_name_with_argument
    assert_equal sample_method_with_argument('test'), smple_method_with_argmtn('test')
    assert_equal sample_method_with_argument('test'), smple_meod_with_argmtn('test')
    assert_equal sample_method_with_argument('test'), smple_method_with_argmtn('test')
    assert_equal sample_method_with_argument('test'), smple_methd_wth_argmtn('test')
    assert_equal sample_method_with_argument('test'), smple_method_with_agmtn('test')
  end 
  
  def test_missing_module_self_method_name
    assert_equal SampleModule::sample_method, SampleModule::smple_method
    assert_equal SampleModule::sample_method, SampleModule::smple_metod
    assert_equal SampleModule::sample_method, SampleModule::smple_method
    assert_equal SampleModule::sample_method, SampleModule::smple_ethod
    assert_equal SampleModule::sample_method, SampleModule::smple_methd
  end
end


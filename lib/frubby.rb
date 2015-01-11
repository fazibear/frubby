require 'bundler/setup'
require 'fuzzy_match'

require 'frubby/method_missing'
require 'frubby/respond_to_missing'
require 'frubby/const_missing'

include Frubby::MethodMissing
include Frubby::RespondToMissing
Object.extend Frubby::ConstMissing

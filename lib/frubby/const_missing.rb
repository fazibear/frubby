module Frubby
  module ConstMissing
    def const_missing(const)
      _constants = (Object.constants + constants).flatten
      _constant = FuzzyMatch.new(_constants).find(const)
      
      warn "[frubby] const_missing: #{const} -> #{_constant}" if $DEBUG

      _constant ? const_get(_constant) : super
    end
  end
end

module Frubby
  module ConstMissing
    def const_missing(const)
      _constants = (Object.constants + constants).flatten
      _constant = FuzzyMatch.new(_constants).find(const)
      
      puts "#{const} => #{_constant}" if $DEBUG

      _constant ? const_get(_constant) : raise('const_missing')
    end
  end
end

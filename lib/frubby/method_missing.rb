module Frubby
  module MethodMissing
    
    EXCLUDED_METHODS = %i[
      to_ary
      to_io
      to_hash
      to_str
    ]
   
    KERNEL_METHODS = Kernel.methods.delete_if {|m| m.match /^[A-Z]/}

    def method_missing(method_sym, *args, &block)
      return if EXCLUDED_METHODS.include? method_sym

      _methods = (KERNEL_METHODS + methods).flatten
      _method = FuzzyMatch.new(_methods).find(method_sym.to_s)

      puts "#{method_sym.to_s} -> #{_method.to_s}" if $DEBUG

      _method.is_a?(Symbol) ? send(_method.to_s, *args, &block) : raise('method_missing')
    end
  end
end

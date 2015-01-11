module Frubby
  module RespondToMissing
    
    EXCLUDED_RESPOND_TOS = %i[
      begin
      end
      path
    ]
   
    KERNEL_METHODS = Kernel.methods.delete_if {|m| m.match /^[A-Z]/}

    def respond_to_missing?(method_name, include_private = false)
      return false if EXCLUDED_RESPOND_TOS.include? method_name.to_sym

      _methods = (KERNEL_METHODS + methods).flatten
      _method = FuzzyMatch.new(_methods).find(method_name.to_sym)
      
      puts "#{method_name} ~> #{_method}" if $DEBUG

      _method.is_a?(Symbol)
    end
  end
end
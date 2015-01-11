require 'bundler/setup'
Bundler.require(:default)

def method_missing(method_sym, *args, &block)  
  return if method_sym == :to_ary

  _methods = (Kernel.methods + methods)
  _method = FuzzyMatch.new(_methods).find(method_sym.to_s)
  
  puts "#{method_sym.to_s} -> #{_method.to_s}" if $DEBUG

  _method.is_a?(Symbol) ? send(_method.to_s, *args, &block) : raise('method_missing')
end


def Object.const_missing(const)
  match = FuzzyMatch.new(constants).find(const)
  puts "#{const} => #{match}" if $DEBUG
  match ? const_get(match) : raise('const_missing')
end



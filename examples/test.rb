require_relative '../lib/frubby'

TEST = 5

class FuzzyRuby
  
  COS = 5
  
  def initialize
    @count = 0
  end

  def inc
    @count += 1
  end

  def dec
    @count -= 1
  end

  def count
    @count
  end

  def asdasdasd
    puts CO
  end
end

fr = FuzyRuby.new # wrong class name
fr.asdasdasd

fr.incc #wrong method name
fr.in
piuts fr.cunt #wrong method names


module TestModule
  def dojpa
    'test'
  end
end

$DEBUG = true

puts TestModule.dojpa

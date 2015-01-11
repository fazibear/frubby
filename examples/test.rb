require_relative '../lib/frubby'

class FuzzyRuby
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
end

fr = FuzyRuby.new # wrong class name
fr.incc #wrong method name
fr.in
piuts fr.cunt #wrong method names

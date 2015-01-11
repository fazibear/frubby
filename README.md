# frubby [![Build Status](https://travis-ci.org/fazibear/frubby.svg?branch=master)](https://travis-ci.org/fazibear/frubby) [![Code Climate](https://codeclimate.com/github/fazibear/frubby/badges/gpa.svg)](https://codeclimate.com/github/fazibear/frubby)
Bring fuzzy_match directly into ruby.

### Install

```
gem install frubby
```

### Example

```ruby
require 'frubby'

class FancyTestClass
  def initialize
    @count = 0
  end

  def inc
    @count += 1
  end

  def dec
    @count -= 1
  end

  def inc_five
    @count +=5
  end

  def count
    @count
  end
end

fr = FncyTstClas.new
fr.incc
fr.in
fr.in_fv
piuts fr.cunt # => 7
```

### License

Copyright (c) 2015 Michał Kalbarczyk

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

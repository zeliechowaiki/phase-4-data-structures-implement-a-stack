# your code here
require 'pry'
class Stack

  def initialize(limit=nil)
    @stack = []
    @limit = limit
  end

  def push(value)
    if self.full?
      raise 'Stack Overflow'
    else
      @stack.push(value)
    end
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def size
    @stack.size
  end

  def empty?
    @stack.size == 0
  end

  def full?
    @limit && @stack.size == @limit
  end

  def search(value)
    if @stack.include?(value)
      @stack.size - (@stack.index(value) + 1)
    else
      -1
    end
  end

end

# binding.pry
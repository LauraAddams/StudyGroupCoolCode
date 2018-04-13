class Queue
  #FIFO
  attr_reader :queue
  attr_reader :count

  def initialize
    @queue = []
    @count = 0
  end

  def enqueue(data)
    @queue.unshift(data)
    @count += 1
  end

  def dequeue
    return nil if count < 1
    @count -= 1
    return @queue.pop
  end

  def empty?
    return @count == 0 ? true : false
  end

  def size
    return @count
  end

  def front
    return nil if @count < 1
    return @queue[@count-1]
  end

  def min
    return nil if @count < 1
    min_value = @queue[0]

    @queue.each do |el|
      min_value =  el if el < min_value
    end
    return min_value
  end

  def max
    return nil if @count < 1
    max_value = @queue[0]

    @queue.each do |el|
      if el > max_value
        max_value = el
      end
    end

    return max_value
  end

  def pretty_print
    pretty_printed_string = "["

    @queue.each do |el|
      pretty_printed_string += "#{el},"
    end

    pretty_printed_string[-1] = "]"
    return pretty_printed_string
  end

end

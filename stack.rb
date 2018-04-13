class Stack
  attr_reader :head

  def initialize
    @head = nil
    @count = 0
  end

  def push(data)
    newNode = Node.new(data)
    newNode.next = @head
    @head = newNode
    @count += 1
  end

  def pop
    if (@head)
      newHead = @head.next
      oldHead = @head.data
      @head = newHead
      @count -= 1
      return oldHead
    else
      return @head
    end
  end

  def top
    if(@head)
      return @head.data
    else
      return "nope, nothing to see here"
    end
  end

  def size
    return @count
  end

  def min
    return nil if !@head

    currentNode = @head
    min = @head.data

    while (currentNode)
      if currentNode.data < min
        min = currentNode.data
      end

      currentNode = currentNode.next
    end

    return min
  end

  def max
    return nil if !@head

    currentNode = @head
    max = @head.data

    while (currentNode)
      if currentNode.data > max
        max = currentNode.data
      end

      currentNode = currentNode.next
    end
    return max
  end

  private
  def findLastNode
    currentNode = @head

    if (!head)
      return nil
    end

    while(currentNode.next) # loop ends when current.next is nil
      currentNode = currentNode.next
    end
    return currentNode
  end
end

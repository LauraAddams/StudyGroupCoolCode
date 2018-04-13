class LinkedList
  attr_reader :length
  attr_reader :head

  def initialize
    @head = nil
    @length = 0
  end

  def addNode(data)
    newNode = Node.new(data)

    if(!@head)
      @head = newNode
      @length += 1
    else
      lastNode = findLastNode
      lastNode.next = newNode
      @length += 1
    end
  end

  def toString
    stringList = ""
    currentNode = @head

    while(@head && currentNode)
      if stringList.length == 0
        stringList += "#{currentNode.data}"
      else
        stringList += ", #{currentNode.data}"
      end
      currentNode = currentNode.next
    end
    return stringList
  end

  def printList
    currentNode = @head

    if (!currentNode)
      puts "No list!"
    else
      while(currentNode.next)
        puts currentNode.data
        currentNode = currentNode.next
      end
      puts currentNode.data
    end
  end

  def valueExists(value)
    currentNode = @head

    if (!currentNode)
      return false
    end

    while(currentNode)
      if currentNode.data === value
        return currentNode
      else
        currentNode = currentNode.next
      end
    end
    return false
  end

  def isSorted
    currentNode = @head
    ascending = true
    descending = true

    if (!currentNode)
      return true
    end

    while(currentNode.next)
      if currentNode.data > currentNode.next.data
          descending = false
      elsif currentNode.data < currentNode.next.data
          ascending = false
      end
      currentNode = currentNode.next
    end
    return(ascending || descending)
  end


  private

  def findLastNode
    if (!head)
      return nil
    end
    currentNode = @head
    # loop ends when current.next is nil
    while(currentNode.next)
      currentNode = currentNode.next
    end
    return currentNode
  end

end #end of LinkedList class

class Node
  attr_reader :data
  attr_accessor :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

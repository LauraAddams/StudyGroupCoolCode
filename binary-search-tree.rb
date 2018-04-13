class BinarySearchTree
  def initialize
    @root = nil
  end

  def insert(value)
    if @root == nil
      @root = BinaryNode.new(value, nil, nil)
      return @root.data
    end

    current_node = @root
    while current_node != nil
      if value <= current_node.data
        if current_node.left == nil
          current_node.left = BinaryNode.new(value)
          return current_node.left.data
        else
          current_node = current_node.left
        end
      else
        if current_node.right == nil
          current_node.right = BinaryNode.new(value)
          return current_node.right.data
        else
          current_node = current_node.right
        end
      end
    end
    raise ArgumentError, 'u did something wrong not us'
  end # end of insert

  def search(value)
    if @root == nil
      return nil
    end

    current_node = @root

    while current_node != nil
      if value == current_node.data
        return current_node.data
      end

      if value < current_node.data
        current_node = current_node.left
      else
        current_node = current_node.right
      end
    end

    return nil
  end # end of search

  def delete(node = @root, value)
    if !node
      return node
    elsif value < node.data
      node.left = delete(node.left, value)
    elsif value > node.data
      node.right = delete(node.right, value)
    else
      # u found it haha
      # lead node
      if !node.left && !node.right
        node = nil
        # 1 child
      elsif !node.left
        node = node.right
      elsif !node.right
        node = node.left
        # 2 children
      else
        min = min(node.right)
        node.data = min.data
        node.right = delete(node.right, min.data)
      end
    end
    return node
  end # end of delete

  def height
    return find_height(@root)
  end

  def preorder(node = @root)
    return if !node

    #root, left, right
    print node.data
    preorder(node.left)
    preorder(node.right)
  end

  def inorder(node = @root)
    return if !node

    #left, root, right
    inorder(node.left)
    print node.data
    inorder(node.right)
  end

  def postorder(node = @root)
    return if !node

    #left, right, root
    postorder(node.left)
    postorder(node.right)
    print node.data
  end

  def min(node = @root)
    return if !node

    if node.left == nil
      return node
    end

    min(node.left)
  end

  def max(node = @root)
    return if !node

    if node.right == nil
      return node
    end

    max(node.right)
  end

  private

  def find_height(node)
    # check root
    if node == nil
      return 0
    end

    heightLeft = find_height(node.left)
    heightRight = find_height(node.right)

    if heightLeft < heightRight
      return 1 + heightRight
    else
      return 1 + heightLeft
    end

  end


end

# ~~~~~~~ Node ~~~~~~~

class BinaryNode
  attr_accessor :data, :left, :right

  def initialize(data, left=nil, right=nil)
    @data = data
    @left = left
    @right = right
  end
end

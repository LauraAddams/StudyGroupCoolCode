require './binary-search-tree.rb'
require './linked-list.rb'
require './stack.rb'
require './queue.rb'

puts "\n\n********BST TEST******* (^:"

puts "i can make a tree"
tree = BinarySearchTree.new
puts tree
puts "i can add a value to tree trust"
puts tree.insert(5)
puts tree.insert(3)
puts tree.insert(7)
puts tree.insert(5)

puts "\n~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "This should return a node: #{tree.search(5)}"
puts "This should return nil: #{tree.search(2)} <-- Blank means nil"

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "pls be height: #{tree.height}"

puts "\n~~~~~~~ pre-order ~~~~~~"
tree.preorder
puts "\n~~~~~~~ in-order ~~~~~~~"
tree.inorder
puts "\n~~~~~~ post-order ~~~~~~"
tree.postorder

puts "\n\nmin ~~~~~~> #{tree.min.data}"
puts "max ~~~~~~> #{tree.max.data}"

puts "\n~~~~~~~~~~~delete 7(leaf)~~~~~~~~~~~~~~"
puts "#{tree.search(7)} exists!"
tree.delete(7)
puts !tree.search(7) ? "7 not here anymore" : "why is 7 still here"

# Random number binary tree
array = []

10.times do
  array << rand(0..100)
end

new_tree = BinarySearchTree.new

array.each do |num|
  new_tree.insert(num)
end
#                          ok

sorted_array = array.sort
puts "\n~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "This should return a node value: #{array[0]}"
puts "This should return nil cuz 200 is out range: #{new_tree.search(200)} <--Blanks means nil"

puts "\n~~~~~~~~~~~height~~~~~~~~~~~~~~"
puts "pls be height: #{new_tree.height}"

puts "\n~~~~~~~ pre-order ~~~~~~"
new_tree.preorder
puts "\n~~~~~~~ in-order ~~~~~~~"
new_tree.inorder
puts "\n~~~~~~ post-order ~~~~~~"
new_tree.postorder

min = new_tree.min.data
max = new_tree.max.data

puts "\n\nmin ~~~~~~> #{min}"
puts min == sorted_array[0] ? "this worked" : "nope bad"
puts "max ~~~~~~> #{max}"
puts max == sorted_array[-1] ? "this worked" : "oh no god"

puts "\n~~~~~~~~~~~delete min~~~~~~~~~~~~~~"
puts "going to delete #{new_tree.search(min)}"
new_tree.delete(min)
puts !new_tree.search(min) ? "#{min} not here anymore" : "why is #{min} still here"

puts "\n~~~~~~~~~~~delete max~~~~~~~~~~~~~~"
puts "going to delete #{new_tree.search(max)}"
new_tree.delete(max)
puts !new_tree.search(max) ? "#{max} not here anymore" : "why is #{max} still here"

puts "\n~~~~~~~~~~~delete med~~~~~~~~~~~~~~"
med = sorted_array[4]
puts "going to delete #{new_tree.search(med)}"
new_tree.delete(med)
puts !new_tree.search(med) ? "#{med} not here anymore" : "why is #{med} still here"


puts "\n~~~~~~~~~~~delete rand~~~~~~~~~~~~"
lower_rand = rand(1...4)
upper_rand = rand(5...9)
puts "going to delete #{new_tree.search(lower_rand)} lower_rand"
new_tree.delete(lower_rand)
puts !new_tree.search(lower_rand) ? "#{lower_rand} not here anymore" : "why is #{lower_rand} still here"

puts "going to delete #{new_tree.search(upper_rand)} upper_rand"
new_tree.delete(upper_rand)
puts !new_tree.search(upper_rand) ? "#{upper_rand} not here anymore" : "why is #{upper_rand} still here"

puts "\n\n**********LINKED LIST TEST*******"
puts "Starting linked list test"
linkedList = LinkedList.new()
puts "the linked list is #{linkedList}"
puts "Adding new node with data 5"
linkedList.addNode(5)
puts "The length is #{linkedList.length}"
puts "Adding new node with data 10"
linkedList.addNode(10)
puts "The length is #{linkedList.length}"
puts "Printing list now!!!"
linkedList.printList
puts "Lets see it as a string yayo"
puts linkedList.toString
puts "does 100 exist?"
puts linkedList.valueExists(100)
puts "does 10 exist?"
puts linkedList.valueExists(10)
if (linkedList.valueExists(10))
  puts "hell yea"
else
  puts "wtf"
end
puts "is this sorted???"
puts linkedList.isSorted
puts "this definitely is not sorted right?"
unsortedList = LinkedList.new
unsortedList.addNode(8)
unsortedList.addNode(3)
unsortedList.addNode(9)
puts unsortedList.toString
puts unsortedList.isSorted
if unsortedList.isSorted
  puts "wtf"
else
  puts "it's not whew"
end
puts "this better be sorted or imma be mad"
sameList = LinkedList.new
10.times do
  sameList.addNode(3)
end
puts "add #{sameList.length} 3's into this list"
puts sameList.toString
puts "is this sorted? #{sameList.isSorted}"

puts "\n\n********STACK TEST******"
puts "I can init a stack right"
newStack = Stack.new
puts newStack ? true: false
puts "imma try to push 5 now"
newStack.push(5)
puts "imma try to pop 5 now"
puts newStack.pop
puts "lets peek on our top method"
puts newStack.top
puts "SIZZZLE what size is our stack"
puts newStack.size
puts "add two"
newStack.push(5)
newStack.push(9)
puts "now what size?"
puts newStack.size
puts "**Testing Stack.min****"
newStack.push(-1)
puts newStack.min
puts newStack.max

puts "\n\n**********QUEUES TEST*****"
newQueue = Queue.new
emptyQueue = Queue.new
numbersQueue = Queue.new

newQueue.enqueue("SLA")
puts newQueue
puts newQueue.count
newQueue.enqueue("WOW")
puts newQueue.pretty_print
newQueue.enqueue(19827)
# newQueue.enqueue([182,"ajshdf"])
puts newQueue.pretty_print
puts newQueue.dequeue
puts newQueue.pretty_print

puts newQueue.empty?
puts emptyQueue.empty?

puts newQueue.front

numbersQueue.enqueue(42)
numbersQueue.enqueue(-22)
numbersQueue.enqueue(0)
numbersQueue.enqueue(5)
numbersQueue.enqueue(33)

puts numbersQueue.min
puts numbersQueue.max

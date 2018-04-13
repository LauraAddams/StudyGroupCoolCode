# Building a Queue with Two Stacks

# Initialize with two empty Stacks, IN and OUT
# - implemented as arrays (team decision)
# - variables
#   - total_count = IN.count + OUT.count
#   - IN.count
#   - OUT.count
# - IN(stack1) and OUT(stack2)

# When we Enqueue
# # - Add to Stack1 and keep a count of number of elements added to Stack1
# - we only Enqueue into our IN stack
#   - IN.push(data)


# How to Dequeue
# - we only Dequeue from our OUT stack unless  OUT is empty AND(&&) IN only has 1 element   - if so, return IN[0]
# - if OUT is empty, transfer all elements from IN to OUT

# How to Transfer
# -custom method, move all elements from IN stack to OUT stack
# - for each in IN
#   - OUT.push(IN.pop)

# How to Size
# - return total

# How to Front
# - dequeue but don't pop

# How to Min and Max
# - iterate through both stacks and return min and max values

####################################################################

# Building a Stack with Two Queues

# Initialize with two empty Queues, Q1 and Q2

# Variables:
# total = Q1.count + Q2.count
# Q1.count
# Q2.count
# active_queue = Q1
# inactive_queue = Q2

# How to transfer
# return nil if total == 0
# while active_queue.count > 1
# inactive_queue.enqueue(active_queue.dequeue)
# end

# How to switch_active
# if active_queue == Q1
#   active_queue = Q2
#   inactive_queue = Q1
# else
#   active_queue = Q1
#   inactive_queue = Q2
# end

# How to push(data)
# active_queue.enqueue(data)

# How to pop
# transfer
# switch_active
# return inactive_queue.dequeue

# How to top
# transfer
# temp = active_queue.dequeue
# inactive_queue.enqueue(temp)
# switch_active
# return temp

# How to print
# like transfer
# puts as you go

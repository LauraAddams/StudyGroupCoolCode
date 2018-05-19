#prints all permutations of a string
# @param string, left index (starting at 0), right (last index of str)
# @returns prints all permutations
# Time Complexity: O(n*n!)

def permute(string, left, right)
  if (left == right)
  # ouput string
    puts string
  puts 
  else
    i = left
    while(i <= right)
      string = swap(string, left, i)
      permute(string, left + 1, right)
      string = swap(string, left, i)
      i += 1
    end
  end
end

# helper method, swaps two chars of string
# @param string, i and j as indices
# @return swapped string
# TODO: there is quicker ruby way of doing this
def swap(string, i, j)
# puts "i = #{string[i]} j = #{string[j]}"
temp = string[i]
string[i] = string[j]
string[j] = temp
return string
end

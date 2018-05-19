
# Check Permutation: Given two strings, write a method to decide if one is a permutation of the other.
# @params original string, comparing string
# @return boolean, true if permutation
# time: n
# space: n

def checkPermutation(original, comparator)
  return false if original.length != comparator.length
  orig_chars = original.split("")
  # orig_chars.to_hash(|char| [char, orig_chars.count(char)])
  orig_chars = Hash[orig_chars.collect {|char| [char, orig_chars.count(char)]}]
  i = 0
  while i < comparator.length
    char = comparator[i]
    result_char_count = orig_chars[char]
    if !(result_char_count) || result_char_count <= 0
      return false
    else
      orig_chars[char] -= 1
    end
    i += 1 
  end
  orig_chars.each do |key, value| 
    if value != 0
      puts "20"
      return false
    end
  end
  return true
end

#question: Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?   
#@param string
# @return boolean true if string contains all unique chars
# Time Complexity: O(n^2)
# Space Complexity: O(1)


def isUnique(word)
  i = 0
  while (i < word.length)
    currentLetter = word[i]
    j = i + 1
    while(j < word.length)
      if (word[i] == word[j])
        return false
      end
      j += 1
    end
    i +=1
  end
  return true
end

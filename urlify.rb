# fun ruby way
# @params string
# @returns string with %20 instead of spaces in the middle
# time: split => n, join => n 
def urlify(string)
  return string.split(" ").join("%20")
end

#TODO: implement without ruby methods, assuming string has enough blank spaces to accommodate that chars of %20

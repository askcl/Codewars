#  Description:
#  
#  Given an array, find the int that appears an odd number of times.
#  There will always be only one integer that appears an odd number of times.

def find_it(seq)
  seq.sort!
  res = seq[0]
  res = find_it(seq[2..seq.length]) if seq[1] == res
  res
end

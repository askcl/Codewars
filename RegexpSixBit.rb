#  Description:
#  
#  Implement String#six_bit_number?, which should return true if given object is a
#  number representable by 6 bit unsigned integer (0-63), false otherwise.
#  
#  It should only accept numbers in canonical representation, so no leading +,
#  extra 0s, spaces etc.

class String
  def six_bit_number?
    return true if self =~ %r{\A[1-5]?[0-9]\z} || self =~ %r{\A[6][0-3]\z} 
    false
  end
end

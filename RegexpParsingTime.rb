#  Description:
#  
#  Implement String#to_seconds, which should parse time expressed as HH:MM:SS, or
#  nil otherwise.
#  
#  Any extra characters, or numbers of minutes/seconds higher than 59, should
#  result in nil being returned.
#  

class String
  def to_seconds
    if self =~ /\A([0-9][0-9])(?:\:)([0-5][0-9])(?:\:)([0-5][0-9])\z/
      return $1.to_i * 60 * 60 + $2.to_i * 60 + $3.to_i
    else
      return nil
    end
  end
end

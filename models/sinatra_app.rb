class Wordformatter

  def initialize(postcode)
    @postcode = postcode
  end  

  def upcase
    @postcode.upcase
  end 

  def camel_case(string)
    words = string.downcase.split
    words.shift + words.map(&:capitalize).join
  end


end  
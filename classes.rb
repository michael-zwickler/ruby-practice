class String
  def say_hi_to(name)
    return "Hi, #{name}"
  end
  def shoutify
    return "#{self.upcase}!!!"
  end
end

string = String.new()
puts string.say_hi_to('Michael')
puts "Hello World".shoutify

class Array
  def average
    sum_of_elements = 0
    self.each { |element| sum_of_elements += element }
    return sum_of_elements.to_f / self.length 
  end
end

arr = [1, 5, 6]
puts arr.average
# Code Reading
# putting a number in for the limit parameter of the fizz_buzz_to method will repeat the fizzbuzz method and print out numbers/"Fizz"/"Buzz"/"FizzBuzz" depending
# on the criteria of the fizzbuzz method until the number limit for fizz_buzz_to is reached
def fizzbuzz(num)
  # defining a method that takes on the parameter num
  case
  when num % 15 == 0 then "FizzBuzz"
  	# when num is divisible by 15 (aka the remainder is 0 when divided by 15), then "Fizzbuzz" is printed
  when num % 3  == 0 then "Fizz"
  	# when num is divisible by 3, then "Fizz" is printed
  when num % 5  == 0 then "Buzz"
  	# when num is divisible by 5, then "Fizz" is printed
  else num
  	# if num is not divisible by 15, 3, or 5, the number is printed
  end
end

def fizz_buzz_to(limit)
  # defining a method that takes on the parameter limit
  1.upto(limit).each do |num|
    # iterates num by substituting num starting from 1 and going up to and including number of times of limit
    puts fizzbuzz(num)
    # prints the fizzbuzz method at num times
  end
end


# Coding
class Homework
  attr_accessor :string
  attr_accessor :repeated
  attr_accessor :num_times
  attr_accessor :holidays
  attr_accessor :dates
  def shout(string)
     puts string.upcase
  end
  def repeat_string(repeated, num_times)
    i = 0
    while i < num_times
      puts repeated
      i+=1
    end
  end
  def calendar(holidays, dates)
    holidays =["Christmas","Valentines","Halloween"]
    dates =["12/25","2/14","10/31"]
    i = 0
    while i<holidays.length
      holiday_hash={holidays[i]=>dates[i]}
      puts holiday_hash
      i+=1
    end
  end
end

test1=Homework.new.shout("hello")
test2=Homework.new.repeat_string("hi",3)
test3=Homework.new.calendar("a","b") 


# Questions
# 1. An instance variable is a variable that only exists within the context of a specific instance in a class.
#   Each instance in the class will have it's own set of variables. Instance variables have @ in front of it.

# 2. The round method in the Integer class rounds a number to a certain number of decimal digits, with 0 digits as 
#   the default. For example, 2.123.round(2) would be 2.12.
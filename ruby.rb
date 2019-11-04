# ASSESSMENT 4: INTRO TO RUBY
# Coding practical questions

# 1. Use TWO different Ruby methods to return a new array with all the numbers multiplied by 3. Expected output: [3, 6, 18, 27, 9, 63]

myArray = [1, 2, 6, 9, 3, 21]

def collect_three(array)
  array.collect { |element| element * 3 }
end 


def map_three(array)
  array.map {|element| element * 3}
end 

collect_three(myArray)
map_three(myArray)


# 2. Create a method that takes in a sentence and returns a new sentence with the first letter of each word capitalized. Expected output = "Hello There, How Are You?"

sentence = "hello there, how are you?"

def capitalize_first_letter(string)
  string.split(' ').map{|word| word.capitalize}.join(' ')
end

capitalize_first_letter(sentence)
  



# 3. Create a method that takes in a string and returns a new string with all the vowels removed. Expected output = " hv n vwls"

no_vowels = "I have no vowels"

def remove_vowels(string) 
  vowels = ['a', 'e', 'i', 'o', 'u']
  string_array = string.downcase.chars
  string_array.map { |char| vowels.include?(char) ? nil: char}.join 
end

remove_vowels(no_vowels)



# 4. Look at this horrible Ruby code. Fix it to be good Ruby code.

class Example
  def initialize day
    @day = day
  end

  def say_hi
    if @day == "Friday"
      puts "TGIF!"
    elsif @day == "Monday"
      puts "Its monday again"
    else
      puts "another day"
    end
  end
end

# 5a. Create a class called Animal that initializes with a color. Create a method in the class called legs that returns 4.

class Animal 
  def initialize color 
    @color = color
    @legs = 4
  end 
  
  def legs 
    @legs
  end
end
    



# 5b. Create a new instance of an Animal with a brown color. Return how the number of legs for the animal object.

brown_animal = Animal.new 'brown' 
brown_animal.legs

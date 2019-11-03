# ASSESSMENT 4: INTRO TO RUBY
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.   

1. In what ways are JavaScript and Ruby similar? In what ways are they different?

  Your answer: JavaScript and Ruby and both dynamic programming languages. 

  Researched answer: 
  Similarities:
  Dynamic, Object-Oriented General-Purpose Scripting-Languages. 
  
  Differences:
  JavaScript can be used for full-stack web development (with Node.js) while Ruby is only for back-end development
  JavaScript is more scalable than Ruby 
  Ruby is better for high CPU application development such as with graphics, image processing, etc
  
  Syntactic differences: 
  Variables:
    Ruby: variable_name = variable_value
    JavaScript: var variable_name = variable_value
  Hashes:
    Ruby: hash_name = { hash_key: hash_value , sechash_key: sechash_value}
      You can call upon the hash to find the value of a key in Ruby by using
      hash_name[:hash_key] —-> hash_value
    Javascript: var hash_name = { hash_key: hash_value , sechash_key:     
      sechash_value}
      Call the “Object” to get the value of the key , which would look like so:
      hash_name.hash_key —-> hash_value
  The semicolon (;) :
    Ruby: Semicolons are not obligitory .
    Javascript Semicolons are necessary where there is more than 1 statement on a line. 
  Methods:
  So methods within Ruby that do not take an argument , eg. “.reverse” . Do not require parenthesis.
  However within javascript almost all methods require parenthesis.
    "string".split("").reverse().join("") ---> "gnirts"
    
  For more syntactic differences (loops, functions): https://medium.com/learning-to-code/ruby-vs-javascript-a-quick-comparison-ebd3b63ebc49
  
  Reference: https://medium.com/learning-to-code/ruby-vs-javascript-a-quick-comparison-ebd3b63ebc49
  https://www.educba.com/javascript-vs-ruby/
  https://www.switchup.org/blog/ruby-vs-javascript-what-should-i-study



2. What is a hash?

  Your answer: A hash is a iterable collection of information in Ruby. It can be thought of as an associative array.

  Researched answer: A hash is a data structure in Ruby that stores information in key-value pairs. A hash is unlike an array in that the information is not stored in any particular order, instead values are retrieved throught their keys rather than their position. 
  
  Reference: 
  https://launchschool.com/books/ruby/read/hashes
  https://www.thoughtco.com/how-to-create-hashes-2908196



3. What is the testing framework used in Ruby? Describe the process of setting up the testing environment.

  Your answer: The testing framework used in Ruby is called RSpec.

  Researched answer: From the syllabus: https://github.com/LEARNAcademy/Syllabus/blob/master/ruby/05rb_rspec.md
  
  Create a file called filename.rb and file called filename_spec.rb in the same folder. Put the following into the spec file:

    require 'rspec'
    require_relative 'filename'
  
  require 'rspec' - searches the gem file path and grabs it.
  require_relative 'filename' - gets the file, which is within the same folder.
  
  In the terminal, cd to the folder with the files; then:
  rspec filename_spec.rb
  and see that world is good and fine. If it is not, such as if this is the first time you've run rspec or you are setting up your development environment in AWS there are two commands you'll need to enter into the AWS terminal to properly test your ruby files.

  sudo apt install rspec-ruby-core
  gem install rspec


4. Name three possible relationships between objects?

  Your answer: Not sure

  Researched answer: One to One, One to Many, Many to Many



5. What is an instance variable? How is it different from other variables in Ruby?

  Your answer: An instance variable begins with an @ sign and is used in a Ruby class.

  Researched answer: Instance variables begin with an @sign and can only be referenced within class methods. Unlike local variables, they do not exist within a particular scope. They exist as long as the instance is alive and can be referenced by any method of the instance. 
  
  Other variables in Ruby are:
  Global variables: begin with a $ sign. Are not recommended to use
  Class variables: begin with a @@sign. Class variables store information regarding the class as a whole and class methods enact behaviors that belong to the whole class, not just to individual instances of that class.
  
  References: https://www.thoughtco.com/instance-variables-2908385
  https://learn.co/lessons/ruby-class-variables-and-class-methods-readme


6. Ruby has a great community and tons of free resources to help you learn. [Here](https://www.ruby-lang.org/en/documentation/)is a list of great resources. Below are a few popular ones:
- [Interactive Ruby Tutorial](http://tryruby.org/levels/1/challenges/0)
- [Why's (poigniant) Guide to Ruby](http://poignant.guide/book/chapter-1.html): comics, anecdotes, and microscopic canaries
- [Ruby in 20 Min](https://www.ruby-lang.org/en/documentation/quickstart/)
- [Ruby Style Guide](https://rubystyle.guide/)

Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Ruby: I looked at Ruby in 20 Min.

1) I got a better understanding of duck typing -- in the tutorial it was defined as the "method of not caring about the actual type of a variable, just relying on what methods it supports". I learned that the benefit of this is that it doesn’t unnecessarily restrict the types of variables that are supported.

2) I learned about using: 
if __FILE__ == $0

__FILE__ is the variable that contains the name of the current file. $0 is the name of the file used to start the program. This check says “If this is the main file being used…” then execute that code.

3) I learned more about using IRB and got some practice with using it. I learned that you can modify classes in Ruby and the changes will be present in any new objects that you create as well as existing objects of that class. 


7. Stretch: What are blocks, procs, and lambdas?

  Your answer: Not sure

  Researched answer: Blocks, procs and lambdas can be seen as different forms of closures.
  
  Ruby blocks are anonymous functions that can be passed into methods. Blocks are enclosed in a do / end statement or between brackets {}, and they can have multiple arguments. The argument names are defined between two pipe | characters. Yield is used to invoke the block that the method was called with 
  Example: 
  def my_method
    puts "we are in the method"
    yield
    puts "we are back in the method"
  end
  my_method { puts "The block is called"}
  
  Procs are blocks of code that have been bound to a set of local variables. Once bound, the code may be called in different contexts and still access those variables. To call a proc, you call it using the call method. A proc is preceeded by an &
  example:
  factor = Proc.new {|n| print n*2 }
    or 
  factor = proc {|n| print n*2}

  //using the proc value
  [3,2,1].each(&factor)
  >642
  
  A lambda is a special type of proc. You can save this lambda into a variable for later use.
    The syntax for defining a Ruby lambda looks like this:
      say_something = -> { puts "This is a lambda" }
      lamb = lambda {|n| puts 'I am a lambda' }
      lamb = -> (n) { puts 'I am a stuby lambda' }
  To run a lambda, you need to call it using the call method 
      say_something.call
  
  Similarities and differences between procs and lambdas: 
    Lambdas are defined with -> {} and procs with Proc.new {}.
    Procs don’t care about the correct number of arguments, while lambdas will raise an exception.
    Return and break behaves differently in procs and lambdas
    Next behaves same way in both procs and lambdas

  

  
  Reference: 
  https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/
  https://medium.com/podiihq/ruby-blocks-procs-and-lambdas-bb6233f68843
  https://www.sihui.io/procs-in-ruby-p1/

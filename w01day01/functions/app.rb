# Functions
def my_Age
  age = 20
end
puts my_Age


def reverse_word word
  word.reverse
end
puts reverse_word "Samuel Udoh"


# DeFAULT ARGUEMENTS
def say_something word =" you need to say something"
puts word
end
say_something

# splats ( soaks up arguments) always returns an array
def say_some_words *words
  puts words
end

  say_some_words "steve", "Sam", "Charles"



  def say_some_words name, *words
    puts words

    puts "#{name} #{words.join("")}"
  end

    say_some_words "steve", "Sam", "Charles", "hello"

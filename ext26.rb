#Exercise 26: CONGRATULATIONS, TAKE A TEST

module Ex25
  def self.break_words(stuff)
    # The 'split' function will break up words for us and pass them back with single quotes
    words = stuff.split (' ')
    words
  end

  def self.sort_words(words)
    # Sort the words.
    words.sort()
  end

  def self.print_first_word(words)
    # Prints the first word and shifts the others down by one.
    word = words.shift()
    puts word
  end

  def self.print_last_word(words)
    #Prints the last word after popping it off the end.
    word = words.pop()
    puts word
  end

  def self.sort_sentence(sentence)
    #Takes in a full sentence and returns the sorted words.
    words = break_words(sentence)
    sort_words(words)
  end

  def self.print_first_and_last(sentence)
    #Prints the first and last words of the sentence.
    words = break_words(sentence)
    print_first_word(words)
    print_last_word(words)
  end

  def self.print_first_and_last_sorted(sentence)
    # Sorts the words then prints the first and last one.
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
  end
end


puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<POEM
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explantion
\n\t\twhere there is none.
POEM


puts "--------------"
puts poem
puts "--------------"

five = 10 - 2 + 3 - 6
puts "This should be five: %s" % five

def secret_formula(started)
    jelly_beans = started * 500
    jars = jelly_beans / 1000
    crates = jars / 100
    return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: %d" % start_point
puts "We'd have %d jeans, %d jars, and %d crates." % [beans, jars, crates]

start_point = start_point / 10

puts "We can also do that this way:"
puts "We'd have %d beans, %d jars, and %d crabapples." % secret_formula(start_point)

sentence = "All good\tthings come to those who wait."
words = Ex25.break_words(sentence)
sorted_words = Ex25.sort_words(words)
puts sentence

puts "%s" % Ex25.print_first_word(words)

puts "%s" % Ex25.print_last_word(words)

puts "%s" % Ex25.print_first_word(sorted_words)

puts "%s" % Ex25.print_last_word(sorted_words)

sorted_words = Ex25.sort_sentence(sentence)
print sorted_words

puts "%s" % Ex25.print_first_and_last(sentence)

puts "%s" % Ex25.print_first_and_last_sorted(sentence)     

#Exercise 10: WHAT WAS THAT?

#\n  the back-slash n: What these characters do is create an "escape sequence". Different "escape sequences" do different things.
#The escape sequence "\n" basically breaks a string into multiple lines by inserting a "new line" character at that point in the string

"I am 6'2\" tall." # escape  double-quote inside string
'I am 6\'2" tall.' # escape single-quote inside string

# Some commonly used escape sequences:
# \" - double quote
# \\ - single backslash
# \a - bell/alert
# \b - backspace
# \r - carriage return
# \n - newline
# \s - space
# \t - tab


tabby_cat = "\tI'm tabbed in cuz I'm a tabby cat." # \t  So the backslash with a t is a tab
persian_cat = "I'm split\non a line cuz I'm a persian cat." # \n  And the backslash with an n is new line 
backslash_cat = "I'm  \\ a \\ backslashed cat." # \\ is just a way to introduce another symbol and in this case its the character of a backslash.
#Why would you need to escape a exclamation point, since it escapes itself?
excited_cat = "I'm  \! a \! excited cat." # \\ is just a way to introduce another symbol and in this case its the character of an exclamation. 

# the variable fat_cat is set to a heredoc equal to the contents of FAT_CAT_LIST
fat_cat = <<FAT_CAT_LIST
I'll do a list for a fat cat
\t* Fat cat food
\t* Fat fishies
\t* Catnip\n\t* Grass
FAT_CAT_LIST

#the variable silly_cat is set to a heredoc equal to the contents of silly_cat_list
silly_cat = <<silly_cat_list
I'll do a list for a silly cat
\t* Kitties are silly
\t* Silly fishies are eaten by silly kitties
\t* Catnip is the same as...\n\t* Silly Grass
silly_cat_list

puts tabby_cat # 'puts' method prints variable 'tabby_cat', which contains an escape sequence to be tabbed in
puts persian_cat # 'puts' method prints variable 'persian_cat', which contains an escape sequence to split the line on two lines
puts backslash_cat # 'puts' method prints variable 'backslash_cat', which contains escape sequences to print backslashes between the characters
puts excited_cat # 'puts' method prints variable 'excited_cat', which contains escape sequences to print exclamations between the characters
puts fat_cat # 'puts' method prints variable 'fat_cat', which will print the contents of the HEREDOC 
puts silly_cat # 'puts' method prints variable 'silly_cat' which inherits the paragraph which works in lowercase as well, however, it is best practices to use all caps for HEREDOCS
 

# Testing 1 2 3
print <<PARAGRAPH
I think I will create another list:
\t* Some weird stuff 
\t* Fizzy stuff
\t* Cookie\n\t\t* Dough
PARAGRAPH

#This showcases two things, one that I can name the inherited block anything I want, in this case it's MY_TEST_THAT_I_NAMED_FATTER_CAT,

#and how inheritance is passed through a variable in yet another way #What does this mean?

fatter_cat = <<MY_TEST_THAT_I_NAMED_FATTER_CAT
Yet another to do list for an even fatter cat:
\t* Kitty stuff and fatter cat 
\t* Shrimp and Tuna
\t* Cat Toys
\t* Catnipped
MY_TEST_THAT_I_NAMED_FATTER_CAT

# 'puts' method prints the variable 'fatter_cat'
puts fatter_cat 

# 'puts' method prints the string with the variable 'tabby_cat' that is tabbed in, and the variable 'persian_cat' that is split,
# the escape sequence '\r' means a return carriage, and the variable 'fat_cat' returns a paragraph with it's first line tabbed in.
#The \r escape sequence will return to the beginning of the line and type over it, so if there are more characters in the original line, you will see them at the end of your new line
puts "Yo and hello #{tabby_cat} \\ #{persian_cat} \r #{fat_cat} \t\t #{fat_cat}"


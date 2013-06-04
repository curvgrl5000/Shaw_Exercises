# Exercise 7: MORE PRINTING

# More of that stuff we just did to build good ol' chops
# 'puts' method prints the string in double quotes
puts "Mary had a little lamb" 

# 'puts' method prints the string and the embedded formatted string 'snow'
puts "Its fleece was white and %s." % 'snow' 

# 'puts' method prints another string
puts "And everywhere that Mary went." 

#experiment, what did this do? 'puts' method printed the string 10 times
puts "." * 10 

# yep, we are now multiplying lambs 10 times 
puts "lambs" * 10

# 'x' variable equals the string, an expression of a key value pair or hash. 
x = "Mary had a little lamb" 

# 'y' variable equals the string and the embedded formatted string 'snow'
y = "and it's fleece was white as %s " % 'snow' 


puts "#{x}" * 10  # 'put's method prints the variable and mulitplies it ten times. REMEMBER '*' IS AN OPERATOR
puts "#{x} #{y }" * 2 # we are printing both of the variables and multiplies them two times

end1 = "C"  #just a variable 'end1' that holds a string
end2 = "h"  #just a variable 'end2' that holds a string 
end3 = "e"  #just a variable 'end3' that holds a string 
end4 = "e"  #just a variable 'end4' that holds a string 
end5 = "s"  #just a variable 'end5' that holds a string 
end6 = "e"  #just a variable 'end6' that holds a string 
end7 = "y"  #just a variable 'end7' that holds a string 

print end1 + end2 + end3 + end4 + end4 + end5 + end6 + end7
#prints each of the strings and in this case outputs them into one string  

puts end1 + end2 + end3 + end4 + end4 + end5 + end6 + end7
#puts each of the strings and in this case outputs them into one string

# when trying to introduce any other operator to the expression on lines 36 or 39, you must first define them or you'll get an error
# for instance if you want to do something like: 'print end1 * end2 ' you'll get an error


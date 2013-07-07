# Exercise 28: BOOLEAN PRACTICE   

# In computer science, a relational operator is a programming language construct or operator that tests or defines some kind of relation between two entities or operands. These include numerical equality (e.g., 5 = 5) and inequalities (e.g., 4 ≥ 3).

# Some programming languages make a syntactical distinction between the "equals" of assignment (e.g. a = 1 assigns the value 1 to the variable "a") and the "equals" of comparison (if a == 1 then ...). Other languages determine which is meant from context.

#Sometimes, particularly in object-oriented programming, the comparison raises questions of data types and inheritance, equality and identity. It is often necessary to distinguish between: two objects with different datatypes both related to another datatype, e.g. an orange and a lemon, both being citrus fruit 
# two different objects of the same type, e.g. two hands
# two objects being equal but distinct, e.g. two $10 banknotes
# two different references to the same object, e.g. two nicknames for the same person

# This brings up the ideas of Structural Equality vs Physical Equality
# Physical (or shallow) equality - whether two references reference the same object.
# Structural (or deep) equality - whether the objects referenced by two references are equivalent in some sense (e.g. their contents are the same).

# Boolean logic is important as a fundamental way of thinking about very simple situations which involve combinations of two states. What it is not is a theory of thought or of the way computers work. It is not even essential to designing or using a computer but it does make both tasks easier. 

# As it's been said, Ruby has a simple definition of truth, it's "truthi-ness" if you will is less
# obtuse than other languages, such as php. Any value that is not nil or the constant false is true.

# However; one of the main differences is how many items return 'true'.
# For instance, zero is not interpreted as a false value. Neither is a zero-length string.
# Ruby does support all of the standard boolean operators and recently introduced the new ooperator: 'defined?'
# See below for some of the possible ways to use the new defined operator.


true and true  # true
false and true # false
1 == 1 and 2 == 1  #false
"test" == "test"   #true
1 == 1 or 2 != 1   #true
true and 1 == 1    #true
false and 0 != 0   #false
true or 1 == 1     #true
"test" == "testing"     #false
1 != 0 and 2 == 1       #false
"test" != "testing"     #true
"test" == 1             #false
not (true and false)    #true
not (1 == 1 and 0 != 1) #false
not (10 == 1 or 1000 == 1000)  #false
not (1 != 10 or 3 == 4)  #false  
not ("testing" == "testing" and "Zed" == "Cool Guy")   #true 
1 == 1 and not ("testing" == 1 or 1 == 0) #true
"chunky" == "bacon" and not (3 == 4 or 3 == 3)  #false
3 == 3 and not ("testing" == "testing" or "Ruby" == "Fun") #false


##################################################################################################################################
# Extra Credit
# There are a lot of operators in Ruby similar to != and ==. Try to find out as many "equality operators" as you can. They should be like: < or <=.
DEFINITIONS OF COMMON COMPARISON OPERATORS
==      Test for equal value. Checks if the value of two operands are equal or not, if yes then condition becomes true.
===     Used to test equality within a 'when' clause of a 'case' statement
!=      Checks if the value of two operands are equal or not, 
        if values are not equal, then condition becomes true
<=>     General comparison operator. Returns -1, 0, or +1, depending on
        whether its receiver is less than, equal to, or greater than its argument
<       Comparison operators for less than. Checks if the value of left operand is less than the value of right operand, if yes then condition becomes true. 
<=      Less than or equal. Checks if the value of left operand is less than or equal to the value of right operand, if yes then condition becomes true.  
>       Greater than. Checks if the value of left operand is greater than the value of right operand, if yes then condition becomes true.
>=      Greater than or equal. Checks if the value of left operand is greater than or equal to the value of right operand, if yes then condition becomes true.  
.eql?   True if the receiver and argument have both the same type and equal values.
equal?  True if the receiver and argument have the same object id.


# Write out the names of each of these equality operators. For example, I call != "not equal".

# Play with IRB by typing out new boolean operators, and before you hit enter try to shout out what it is. Do not think about it, just the first thing that comes to mind. Write it down then hit enter, and keep track of how many you get right and wrong. Throw away that piece of paper from #3 away so you do not accidentally try to use it later.

# 'defined?' operator
# The defined? operator returns nil if its argument (which can be an arbitrary expression) is not defined, otherwise it returns a description of that argument. If the argument is yield, defined? returns the string ``yield'' if a code block is associated with the current context.
defined? 1	            # »	"expression"
defined? weird	        # »	nil
defined? puts 	        # »	"method"
defined? String	        # »	"constant"
defined? string	        # »	"constant"
defined? STRING	        # »	"constant"
defined? $&	            # »	nil
defined? $_	            # »	"global-variable"
defined? Math::PI	      # »	"constant"
defined? ( c,d = 1,2 )	# »	"assignment"
defined? 42.abs	        # »	"method" 
defined? yield          # True if a code block has been passed 
defined? yield          # => "yield" (if there is a block passed)
defined? yield          # => nil (if there is no block)

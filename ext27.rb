# EXT 27 THE TRUTH TERMS   
# In Ruby we have the following terms (characters and phrases) for determining if something is "true" or "false". Logic on a computer is all about seeing if some combination of these characters and some variables is True at that point in the program. 

########################################################################################################################
########################################################################################################################
# A GREAT RESOURCE FOR MEMORIZATION: http://memorize.com/ruby-truth-tables/hezwx
########################################################################################################################
########################################################################################################################

# and
# or
# not
# != (not equal)
# == (equal)
# >= (greater-than-equal)
# <= (less-than-equal)
# true
# false

# You actually have run into these characters before, but maybe not the phrases. The phrases (and, or, not) actually work the way you expect them to, just like in English.

# The Truth Tables
# We will now use these characters to make the truth tables you need to memorize.

NOT	              True?
-----------------------
not False	        True
not True	        False

OR	              True?
-----------------------
True or False	    True
True or True	    True
False or True	    True
False or False	  False

AND	              True?
-----------------------
True and False	  False
True and True	    True
False and True	  False
False and False	  False

NOT OR	                    True?
----------------------------------
not (True or False)	        False
not (True or True)	        False
not (False or True)	        False
not (False or False)	      True


NOT AND	True?
----------------------------------
not (True and False)	      True
not (True and True)	        False
not (False and True)	      True
not (False and False)	      True

!=	            True?
----------------------------------
1 != 0	        True
1 != 1	        False
0 != 1	        True
0 != 0	        False
==	            True?
1 == 0	        False
1 == 1	        True
0 == 1	        False
0 == 0	        True

# EXTRA CREDIT
DEFINITIONS OF COMMON COMPARISON OPERATORS CONTINUED...
==   Test for equal value. Checks if the value of two operands are equal or not, if yes then condition becomes true.
===  Used to test equality within a 'when' clause of a 'case' statement
!=   Checks if the value of two operands are equal or not, 
     if values are not equal, then condition becomes true
<=>  General comparison operator. Returns -1, 0, or +1, depending on
     whether its receiver is less than, equal to, or greater than its 
     argument
<    Comparison operators for less than. Checks if the value of left operand is less than the value of right operand, if yes then condition becomes true. 
<=   Less than or equal. Checks if the value of left operand is less than or equal to the value of right operand, if yes then condition becomes true.  
>    Greater than. Checks if the value of left operand is greater than the value of right operand, if yes then condition becomes true.
>=   Greater than or equal. Checks if the value of left operand is greater than or equal to the value of right operand, if yes then condition becomes true.  
.eql?   True if the receiver and argument have both the same type and equal values.
equal?  True if the receiver and argument have the same object id.





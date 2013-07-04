# EXERCISE 36: DESIGNING AND DEBUGGING       

###############################################################################################
# Rules For If-Statements
# 1. Every if-statement must have an else.

# 2. If this else should never be run because it doesn't make sense, then you must use a die function in the else that prints out an error message and dies, just like we did in the last exercise. This will find many errors.

# 3. Never nest if-statements more than 2 deep and always try to do them 1 deep. This means if you put an if in an if then you should be looking to move that second if into another function.

# 4. Treat if-statements like paragraphs, where each if,``elsif``,``else`` grouping is like a set of sentences. Put blank lines before and after.

# 5. Your boolean tests should be simple. If they are complex, move their calculations to variables earlier in your function and use a good name for the variable.


###############################################################################################
# Rules For Loops
# 1. Use a while-loop only to loop forever, and that means probably never. This only applies to Ruby, other languages are different.

# 2. Use a for-loop for all other kinds of looping, especially if there is a fixed or limited number of things to loop over.


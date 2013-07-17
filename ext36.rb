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


###############################################################################################
# Tips For Debugging
# Do not use a "debugger". A debugger is like doing a full-body scan on a sick person. You do not get any specific useful information, and you find a whole lot of information that doesn't help and is just confusing.

# The best way to debug a program is to use puts or p to print out the values of variables at points in the program to see where they go wrong.
# Make sure parts of your programs work as you work on them. Do not write massive files of code before you try to run them. Code a little, run a little, fix a little.

###############################################################################################
# Homework
# Now write a similar game to the one that I created in the last exercise. It can be any kind of game you want in the same flavor. Spend a week on it making it as interesting as possible. For extra credit, use arrays, functions, and modules (remember those from Ex. 13?) as much as possible, and find as many new pieces of Ruby as you can to make the game work.

# There is one catch though, write up your idea for the game first. Before you start coding you must write up a map for your game. Create the rooms, monsters, and traps that the player must go through on paper before you code.

# Once you have your map, try to code it up. If you find problems with the map then adjust it and make the code match.


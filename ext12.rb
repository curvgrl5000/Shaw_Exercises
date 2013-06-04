#Exercise 12: LIBRARIES

# On to libraries ( another name is modules ) and the difference between require and include
# A library is a collection or readily written items that we can call on and "the wiring under the board" has already been done for us.

require 'open-uri' # these are called libraries, but can be called modules by other programmers

# open method (the url that holds the library) and "do" or yeild the result into the f variable
open("http://www.ruby-lang.org/en") do |f|
  f.each_line {|line| p line} # 'each_line' method of the 'f' variable is then expressed into a 'line' parameter and  p mode prints the line  
  puts f.base_uri  # 'puts' print the base_uri 'f' uses. The base_uri method filters, finds and returns the base_uri that 'f' uses: URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/en/>
  puts f.content_type     # 'puts' prints the content_type 'f' uses. The 'content_type' method filters, finds and returns the kind of content-type 'f' uses: "text/html"
  puts f.charset          # 'puts' prints the charset that 'f' uses. The 'charset' method  filters, finds and returns the charset 'f' uses: "iso-8859-1"
  puts f.content_encoding # 'puts' prints the kind of content_encoding that 'f' uses. The'content_encoding' method  filters and finds what kind of content_encoding 'f' uses: [] 
  puts f.last_modified    # 'puts' prints when 'f' was last modified. The'last_modified' method filters and finds the date that 'f' was last modified:  Thu Dec 05 02:45:02 UTC 2002
end

############################################################################################################

#EXTRA CREDIT No. 1
#The include and require methods do very different things.
# Require: File level thing
# Include: Language level thing

#The require method does what include does in most other programming languages: run another file. It also tracks what you've required in the past and won't require the same file twice. To run another file without this added functionality, you can use the load method.

#The include method takes all the methods from another module and includes them into the current module. This is a language-level thing as opposed to a file-level thing as with require. The include method is the primary way to "extend" classes with other modules (usually referred to as mix-ins). For example, if your class defines the method "each", you can include the mixin module Enumerable and it can act as a collection. This can be confusing as the include verb is used very differently in other languages.

#So if you just want to use a module, rather than extend it or do a mix-in, then you'll want to use require.

#Oddly enough, Ruby's require is analogous to C's include, while Ruby's include is almost nothing like C's include.

############################################################################################################

#EXTRA CREDIT NO. 2
# 2. Can you require a script that doesn't contain a library specifically? 
# With self-defined modules, you can require a module without having to require a library.
# Here's how:
#     module Whatever
       # write some code
#     end
# Then you can import this module by invoking:
# require "Whatever"

############################################################################################################

#3  Figure out which directories on your system Ruby will look in to find the libraries you require. 
#  Open an irb console and type:
#  puts $LOAD_PATH
#  You’ll see all the directories where ruby look to find the libraries needed.
#  UPDATE: also puts $: did the trick.


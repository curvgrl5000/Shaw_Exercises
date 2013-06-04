a_file, bfile, cfile, dfile = ARGV
script = $0

a_file = ("testfile_1.txt")
b_file = ("testfile_2.txt") 
c_file = ("testfile_3.txt") 
d_file = ("testfile_4.txt") 

# THE r+, READS ONLY
puts "** Here's the contents of a file #{a_file}:"
  File.open(a_file, "r") do |aFile|
# ... process the file
  puts aFile.gets
end


# THE r+, READ AND WRITE MODE
puts "** Here's the contents of a file #{b_file}:" 
File.open(b_file, "r+") do |bFile|
# ... process the file
  puts bFile.gets
end


# THE 'w' WRITE MODE, ONLY WRITES
puts "** Here's the contents of a file #{c_file}:"
File.open(c_file, "w+") do |cFile|
# ... process the file
  puts cFile.gets
end
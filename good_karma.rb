def prompt() 
  print "> "
end

def give(gived)                             
  puts "#{gived} You'll get reincarnated into swan. Keep it up, don't go backwards."                
  # Process.exit(0)                          
end

def try(try_again)                             
  puts "#{try_again} You'll get reincarnated into large earth worm. Try again tomorrow, please!"                
end

def start()                               
  puts "There's homeless women outside the restaurant you just exited."          
  puts "You've got left-overs of your favorite dish."   
  puts "Do you give her your leftovers? Yes? or No?"           

  prompt; next_move = gets.chomp          

    if next_move.include? "yes"             
    give("Good karma wins!")          
  elsif next_move.include? "no"         
    try("Bad karma, mon.")          
  else                                    
    puts "Not sure about this question? Meditate and try again."
    start()
  end
end               

start()
# Logical operators
      ruby = "nifty"
      programming = "fun"
      
      if ruby == "nifty" && programming == "fun"
        puts "&&"
      end
      
      if ruby == "nifty" and programming == "fun"
        puts "&& and"
      end
      
      a, b, c, d = 1, 2 ,3 , 4
      if a == 1 && b == 2 && c == 3 && d == 4
        puts sum = a + b + c + d
      end
      
      programming = "ruby"
      
      if ruby == "nifty" || programming == "fun"
        puts "||"
      end
      
      if ruby == "nifty" or programming == "fun"
        puts "|| or"
      end
      
      ruby = "awesome"
      if ruby == "nifty" or programming == "fun"
        puts "|| or"
      else
      	puts "sorry!"
      end
      
      if not (ruby == "nifty" || programming == "fun")
      	puts "nothing!"
      end
      
      if !(ruby == "nifty" or programming == "fun")
      	puts "nope!"
      end
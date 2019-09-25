class Piano::CLI     
   
   def call  
     piano   
      
     goodbye
   end
   
   def piano   
     @composers_list=Piano::Pianists.today 
    end
    
    def goodbye
      puts "Goodbye"
    end
    
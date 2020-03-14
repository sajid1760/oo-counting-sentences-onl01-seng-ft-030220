require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentarray2 = []
    sentarray3 = []
    sentarray = self.split(".")
    sentarray.each do |aa|
      sentarray2 << aa.split("!")
    end
    
    sentarray2 = sentarray2.flatten
    
    
   sentarray2.each do |aa|
      sentarray3 << aa.split("?")
    end
    
    sentarray3 = sentarray3.flatten
   
   a = 0 
    sentarray3.each do |element|
      if (element == "" || element == []) then sentarray3.delete_at(a) end
        a = a + 1
    end
   
   
    puts sentarray3.count
    
  end
  
end

#"Hello.. What's up? Well!".count_sentences
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
      sentarray2 << aa.split("!").join
    end
    
   sentarray2.each do |aa|
      sentarray3 << aa.split("?").join
    end
    
    puts sentarray.inspect
    puts sentarray2.inspect
    puts sentarray3.inspect
   
   a = 0 
    sentarray3.each do |element|
      if (element == "" || element == []) then sentarray3.delete_at(a) end
        a = a + 1
    end
   
   
    #puts sentarray3.count
  end
  
end

"Hello.. What's up? Well!".count_sentences
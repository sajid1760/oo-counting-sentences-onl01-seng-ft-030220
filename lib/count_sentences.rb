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
    puts sentarray2.inspect
    sentarray2.each do |bb|
      sentarray3 << bb
    end
    a = 0 
    sentarray2.each do |element|
      if (element == "" || element = []) then sentarray2.delete_at(a) end
        a = a + 1
    end
    puts sentarray2.inspect
    puts sentarray2.count
  end
  
end

"Hello.. What's up? Well!".count_sentences
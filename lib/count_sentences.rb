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
      sentarray3 << bb.split
    end
    a = 0 
    sentarray3.each do |element|
      if (element == "" || element.empty?) then sentarray.delete_at(a) end
        a = a + 1
    end
    puts sentarray3.inspect
    puts sentarray3.count
  end
  
end

"Hel!o.. What's up? Well.".count_sentences
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
    count = 0
    
    (count + self.split(".").count - 1) if sentence?
    
    (count + self.split("?").count - 1) if question?

    (count + self.split("!").count - 1) if exclamation?

    count
  end
end
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
    i = 0
    (i += (self.split(".").count)) if sentence?
    (i += self.split("?").count) if question?
    (i += self.split("!").count) if exclamation?
    
#    if sentence? || question? || exclamation?
#      i = (self.split(".").count) + (self.split("?").count) + (self.split("!").count) - 3
#    end
    i
  end
end
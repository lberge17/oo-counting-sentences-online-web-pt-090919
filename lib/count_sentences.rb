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
    sentence? ? (i += (self.split(".").count)) : i
    
#    if sentence? || question? || exclamation?
#      i = (self.split(".").count) + (self.split("?").count) + (self.split("!").count) - 3
#    end
    i
  end
end
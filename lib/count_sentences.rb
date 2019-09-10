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
    if sentence? || question? || exclamation?
      i = (self.split(".").count) + (self.split("?").count) + (self.split("!").count)
    end
    i
  end
end
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
    if sentence? || question? || exclamation
      (self.split(".").count - 1) + (self.split("?").count - 1) + (self.split("!").count - 1)
    else
      0
    end
  end
end
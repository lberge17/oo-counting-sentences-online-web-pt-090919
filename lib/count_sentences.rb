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
      i = (self.split(".").count) + (self.split("?").count) + (self.split("!").count) - 3
    end
    if !sentence? || !question? || !exclamation?
      i += 1
    end
    i
  end
end
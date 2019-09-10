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
    if sentence?
      i -= 1
    end
    if question?
      i -= 1
    end
    if exclamation?
      i -= 1
    end
    i
  end
end
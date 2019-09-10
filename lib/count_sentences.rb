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
    if sentence?
      count + (self.split(".").count - 1)
    end
    if question?
      count + (self.split("?").count - 1)
    end
    if exclamation?
      count + (self.split("!").count - 1)
    end
    count
  end
end
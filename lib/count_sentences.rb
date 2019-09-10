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
    (i += self.split(".").count) if sentence?
    (i += self.split("?").count) if question?
    (i += self.split("!").count) if exclamation?

    i
  end
end
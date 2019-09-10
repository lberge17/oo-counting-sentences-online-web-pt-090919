require 'pry'

class String
  @@count = 0
  
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
    if exclamation? || question? || sentence?
      @@count += 1
    end
    @@count
  end
end
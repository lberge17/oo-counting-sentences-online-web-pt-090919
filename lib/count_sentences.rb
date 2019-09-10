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
    self.each do |string|
      if exclamation? || question? || sentence?
        count += 1
      end
    end
    count
  end
end
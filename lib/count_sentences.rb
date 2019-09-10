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
      self.split(".").each do |array|
        self.split("?").each do |array|
          binding.pry
          i += self.split("!").count
        end
      end
      #i = (self.split(".").count - 1) + (self.split("?").count - 1) + (self.split("!").count - 1)
    end
    i
  end
end
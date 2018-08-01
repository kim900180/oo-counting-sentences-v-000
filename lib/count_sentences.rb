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
    count = self.split(/[!,.,?]/)
    i = 0
    counter = 0
    binding.pry
    while i < count.length
      if count[i] != ""
        counter += 1
        i += 1
      else
        counter = counter
        i += 1
      end
    end
    counter
  end
end

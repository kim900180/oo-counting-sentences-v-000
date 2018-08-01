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
    count = self.split(/[!.?]/)
    i = 0
    counter = 0
    # binding.pry
    count.each do |item|
      counter += 1 unless item == ""
    end
    counter
  end
end

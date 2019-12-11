require 'pry'

class String

  def sentence?
    self.split('')[-1] == '.'
  end

  def question?
    self.split('')[-1] == '?'
  end

  def exclamation?
    self.split('')[-1] == '!'
  end

  def count_sentences
    length = 0
    self.split(/[!.?]/) do |memo|
      length += 1 if memo != ''
    end
    length
  end
end
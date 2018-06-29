class Anagram
  def initialize(word1, word2)
    @firstword = word1
    @secondword = word2
  end



  def compare

    word_array_one = @firstword.downcase.split("")
    word_array_two = @secondword.downcase.split("")
    sorted_one = word_array_one.sort do |a,b| a <=> b end
    sorted_two = word_array_two.sort do |a,b| a <=> b end
    print sorted_one
    print sorted_two
    if sorted_one.join("") == sorted_two.join("")
      return "anagram"
    elsif sorted_one.join("") != sorted_two.join("")
      "antigram"
    end
  end
end

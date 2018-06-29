class Anagram
  def initialize(word1, word2)
    @firstword = word1
    @secondword = word2
  end

  # def compare
  #
  #   word_array_one = @firstword.downcase.split("")
  #   word_array_two = @secondword.downcase.split("")
  #   sorted_one = word_array_one.sort do |a,b| a <=> b end
  #   sorted_two = word_array_two.sort do |a,b| a <=> b end
  #   both_arrays_cloned = (sorted_one.clone + sorted_two.clone)
  #     print both_arrays_cloned
  #     print sorted_two
  #     print sorted_one
  #   both_arrays_cloned.each do |y|
  #     if y == ("a"|| "e"|| "i"|| "o"|| "u"|| "y")
  #       print y
  #       vari ="not a word, try again"
  #     elsif sorted_one.join("") == sorted_two.join("")
  #       return "anagram"
  #     elsif sorted_one.join("") != sorted_two.join("")
  #       "antigram"
  #     end
  #   end
  # end
  def compare

    word_array_one = @firstword.downcase.split("")
    word_array_two = @secondword.downcase.split("")
    sorted_one = word_array_one.sort do |a,b| a <=> b end
    sorted_two = word_array_two.sort do |a,b| a <=> b end
    both_arrays_cloned = (sorted_one.clone + sorted_two.clone)
      print both_arrays_cloned
      print sorted_two
      print sorted_one

    both_arrays_cloned.each do |y|
      if y == ("a"|| "e"|| "i"|| "o"|| "u"|| "y")
        print y
        @is_a_word = true
        @is_a_word
      else
        @is_a_word = false
        @is_a_word
      end
      @is_a_word
    end
    if @is_a_word == true
      if sorted_one.join("") == sorted_two.join("")
        return "anagram"
      else sorted_one.join("") != sorted_two.join("")
        "antigram"
      end
    else @is_a_word == false
      "not a word, try again"
    end


  end
end

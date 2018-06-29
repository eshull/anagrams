class Anagram
  def initialize(word1, word2)
    @firstword = word1
    @secondword = word2
  end


  #
  #   def compare
  #
  #     word_array_one = @firstword.downcase.split("")
  #     word_array_two = @secondword.downcase.split("")
  #     sorted_one = word_array_one.sort do |a,b| a <=> b end
  #     sorted_two = word_array_two.sort do |a,b| a <=> b end
  #     both_arrays_cloned = (sorted_one.clone + sorted_two.clone)
  #
  #      is_word = both_arrays_cloned.any?{|i| i == ("a"||"e"||"i"||"o"||"u"||"y")}
  #      print "has a vowel"
  #      print is_word
  #     if is_word == true
  #       if sorted_one.join("") == sorted_two.join("")
  #       answer ="anagram"
  #       elsif sorted_one.join("") != sorted_two.join("")
  #       answer ="antigram"
  #       end
  #     elsif is_word == false
  #     answer = "not a word, try again"
  #     end
  #     puts answer
  #     answer
  #   end
  # end
#
# word
# a = [5, 1, 6, 14, 2, 8]
# b = [2, 6, 15]
#
# a - b
# => [5, 1, 14, 8]
#
# b - a
# => [15]
#
# (b - a).empty?
# => false

# antigram = sorted_one.all? { |e| sorted_two.include?(e)}


  def compare

    word_array_one = @firstword.downcase.split("")
    word_array_two = @secondword.downcase.split("")
    sorted_one = word_array_one.sort do |a,b| a <=> b end
    sorted_two = word_array_two.sort do |a,b| a <=> b end
    both_arrays_cloned = (sorted_one.clone + sorted_two.clone)

    not_antigram = sorted_one.all? { |e| sorted_two.include?(e)}
    puts "not antigram"
    print not_antigram
    is_word = both_arrays_cloned.any?{|i| i == ("a"||"e"||"i"||"o"||"u"||"y")}
    print is_word
    if not_antigram == false
      answer = "antigram"
    elsif is_word == true
      if sorted_one.join("") == sorted_two.join("")
      answer ="anagram"
      elsif sorted_one.join("") != sorted_two.join("")
      answer ="regular word"
      end
    elsif is_word == false
    answer = "not a word, try again"
    end
    answer
  end
end

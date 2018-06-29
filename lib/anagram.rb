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
#     # print both_arrays_cloned
#     # print sorted_two
#     # print sorted_one
#   both_arrays_cloned.each do |y|
#     if y == ("a"||"e"||"i"||"o"||"u"||"y")
#       print y
#       "not a word, try again"
#       word_array_twoanswer = true
#     else
#       array_answer = false
#     end
#     @answer = array_answer
#   end
#   if @answer == true && sorted_one.join("") == sorted_two.join("")
#     "anagram"
#   elsif @answer == true && sorted_one.join("") != sorted_two.join("")
#       "antigram"
#   elseif @answer == false
#     "not a word"
#   end
#
# end

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

    antigram = sorted_one.all? { |e| sorted_two.include?(e)}
    puts "antigram"
    print antigram
    is_word = both_arrays_cloned.any?{|i| i == ("a"||"e"||"i"||"o"||"u"||"y")}
    if antigram == true
      "antigram"
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
#   def compare
#
#     word_array_one = @firstword.downcase.split("")
#     word_array_two = @secondword.downcase.split("")
#     sorted_one = word_array_one.sort do |a,b| a <=> b end
#     sorted_two = word_array_two.sort do |a,b| a <=> b end
#     both_arrays_cloned = (sorted_one.clone + sorted_two.clone)
#       print both_arrays_cloned
#       print sorted_two
#       print sorted_one
#     def has_a_vowel
#       both_arrays_cloned.each do |y|
#         if y == ("a"|| "e"|| "i"|| "o"|| "u"|| "y")
#           print y
#           is_a_word = true
#         else
#           is_a_word = false
#         end
#       end
#       @yes_vowel = is_a_word
#     end
#     if @yes_vowel == true
#       if sorted_one.join("") == sorted_two.join("")
#         return "anagram"
#         answer = "anagram"
#       else sorted_one.join("") != sorted_two.join("")
#         answer = "antigram"
#       end
#       answer
#     elsif @yes_vowel == false
#       answer = "not a word, try again"
#     else
#       answer = "wrong spot"
#     end
#     answer
#
#
#   end
# end

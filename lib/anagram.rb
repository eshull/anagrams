class Anagram
  def initialize(word1, word2)
    @firstword = word1
    @secondword = word2
  end
  def compare
    first_word_array = @firstword.gsub(/[.,()"'*#{}-]/, '').downcase.split(" ")
    second_word_array = @secondword.gsub(/[.,()"'*#{}-]/, '').downcase.split(" ")
    sorted_one = first_word_array.sort do |a,b| a <=> b end
    sorted_two = second_word_array.sort do |a,b| a <=> b end
    both_arrays_cloned = (sorted_one.clone + sorted_two.clone)
    both_arrays_cloned.each do |x|
      if /[aeiouy]/.match(x)
        puts "vowel"
        first_word_array = @firstword.gsub(/[.,()"'*#{}-]/, '').downcase.split("")
        second_word_array = @secondword.gsub(/[.,()"'*#{}-]/, '').downcase.split("")
        sorted_one = first_word_array.sort do |a,b| a <=> b end
        sorted_two = second_word_array.sort do |a,b| a <=> b end
        not_antigram = sorted_one.all? { |e| sorted_two.include?(e)}
        if not_antigram == false
          answer = "antigram"
        elsif sorted_one.join("") == sorted_two.join("")
          answer ="anagram"
        elsif sorted_one.join("") != sorted_two.join("")
          answer ="regular word"
        end
        return answer
      else
        puts "no vowel"
        answer = "not a word, try again"
        return answer
      end
    end
    answer
  end
    # print not_wor

  #   is_word = both_arrays_cloned.any?{ |i| i == ("a"||"e"||"i"||"o"||"u"||"y")}
  #   if not_antigram == false
  #     answer = "antigram"
  #   elsif is_word == true
  #     if sorted_one.join("") == sorted_two.join("")
  #     answer ="anagram"
  #     elsif sorted_one.join("") != sorted_two.join("")
  #     answer ="regular word"
  #     end
  #   elsif is_word == false
  #   answer = "not a word, try again"
  #   end
  #   answer
  # end
end

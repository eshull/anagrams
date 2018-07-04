class Anagram
  def initialize(word1, word2)
    @firstword = word1
    @secondword = word2
  end
  def compare
    first_word_array = @firstword.gsub(/[.,()"'*#{}-]/, '').downcase.split(" ")
    second_word_array = @secondword.gsub(/[.,()"'*#{}-]/, '').downcase.split(" ")
    both_arrays_cloned = (first_word_array.clone + second_word_array.clone)
    both_arrays_cloned.each do |x|
      if /[aeiouy]/.match(x)
        # puts "vowel"
        first_word_array = @firstword.gsub(/[.,()"'*#{}-]/, '').downcase.split(" ")
        second_word_array = @secondword.gsub(/[.,()"'*#{}-]/, '').downcase.split(" ")
        first_letters_array = @firstword.gsub(/[.,()"'*#{}-]/, '').downcase.split("")
        second_letters_array = @secondword.gsub(/[.,()"'*#{}-]/, '').downcase.split("")
        sorted_one = first_letters_array.sort do |a,b| a <=> b end
        sorted_two = second_letters_array.sort do |a,b| a <=> b end
          regular_word = /second_letters_array/.match(first_letters_array.to_s)
        # regular_word = first_word_array.any? { |s| s.include?(second_word_array.to_s) }
        # regular_word = sorted_one.any?{sorted_two.all?}

        not_antigram = sorted_one.any? { |e| sorted_two.include?(e)}
        print not_antigram
        # print not_antigram
        if not_antigram == true && sorted_one.join("") != sorted_two.join("")
          answer ="regular word"
        elsif not_antigram == false
          answer = "antigram"
        elsif sorted_one.join("") == sorted_two.join("")
          answer ="anagram"
        # elsif regular_word == true
        #   answer ="regular word"
        end
        return answer
      else
        # puts "no vowel"
        answer = "not a word, try again"
        return answer
      end
    end
    answer
  end
end
# sorted_one.join("") != sorted_two.join("")

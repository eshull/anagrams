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
        puts "vowel"
        first_word_array = @firstword.gsub(/[.,()"'*#{}-]/, '').downcase.split("")
        second_word_array = @secondword.gsub(/[.,()"'*#{}-]/, '').downcase.split("")
        sorted_one = first_word_array.sort do |a,b| a <=> b end
        sorted_two = second_word_array.sort do |a,b| a <=> b end
        not_antigram = sorted_one.all? { |e| sorted_two.include?(e)}
        print not_antigram
        if not_antigram == false
          answer = "antigram"
        elsif sorted_one.join("") == sorted_two.join("")
          answer ="anagram"
        else
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
end
# sorted_one.join("") != sorted_two.join("")

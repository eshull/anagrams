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
        first_word_array = @firstword.gsub(/[.,()"'*#{}-]/, '').downcase.split(" ")
        second_word_array = @secondword.gsub(/[.,()"'*#{}-]/, '').downcase.split(" ")
        both_arrays_cloned = (first_word_array.clone + second_word_array.clone)
        first_letters_array = @firstword.gsub(/[.,()"'*#{}-]/, '').downcase.split("")
        second_letters_array = @secondword.gsub(/[.,()"'*#{}-]/, '').downcase.split("")
        sorted_one = first_letters_array.sort do |a,b| a <=> b end
        sorted_two = second_letters_array.sort do |a,b| a <=> b end
        not_antigram = sorted_one.any? { |e| sorted_two.include?(e)}
        print both_arrays_cloned
        both_arrays_cloned.each do |item|
            if /[aeiouy]/.match(item)
              next
            else
              return "not a word, try again"
           end
        end
        if not_antigram == true && sorted_one.join("") != sorted_two.join("")
          answer ="regular word"
        elsif not_antigram == false
          answer = "antigram"
        elsif sorted_one.join("") == sorted_two.join("")
          answer ="anagram"
        end
        return answer
      else
        answer = "not a word, try again"
        return answer
      end
    end
    answer
  end
end

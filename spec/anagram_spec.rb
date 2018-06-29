require('rspec')
require('ruby-dictionary')


describe('#anagram') do
  it("checks if two words are anagrams") do
    word = Anagram.new("team", "meat")
    expect(word.compare).to(eq("anagram"))
  end
  it("checks if two words are anagrams regardless of capitalization") do
    word = Anagram.new("TeAm", "mEat")
    expect(word.compare).to(eq("anagram"))
  end
  it("checks if two words are actually words by searching them for vowels") do
    word = Anagram.new("Tmtx", "xtmt")
    expect(word.compare).to(eq("not a word, try again"))
  end
  it("Checks if two words have no matching letters and are therefore Antigrams") do
    word = Anagram.new("fred", "wilma")
    expect(word.compare).to(eq("antigram"))
  end
  it("Check if multiple words are anagrams by removing spaces and punctuation") do
    word = Anagram.new("the w*il(-ma", "the wi'l.ma")
    expect(word.compare).to(eq("anagram"))
  end
  it("Checks if input is an actual word in the english dictionary") do
    word = Anagram.new("today", "flud")
    expect(word.compare).to(eq("not a word in the english language"))
  end
end

require('rspec')
require('anagram')



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
end

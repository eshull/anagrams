require('rspec')
require('anagram')



describe('#anagram') do
  it("checks if two words are anagrams") do
    word = Anagram.new("tea", "eat")
    expect(word.compare).to(eq(true))
  end
end

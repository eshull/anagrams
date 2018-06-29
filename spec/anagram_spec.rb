require('rspec')
require('anagram')



describe('#anagram') do
  it("checks if two words are anagrams") do
    word = Anagram.new("team", "meat")
    expect(word.compare).to(eq("anagram"))
  end
end

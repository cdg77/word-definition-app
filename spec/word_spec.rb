require('rspec')
require ('word')

describe(Word) do

  describe('#type') do
    it('returns the type of word') do
      test_word = Word.new('noun', 'def·i·ni·tion')
      expect(test_word.type).to(eq('noun'))
    end
  end

end

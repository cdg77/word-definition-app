require('rspec')
require ('word')

describe(Word) do

  describe('#type') do
    it('returns the type of word') do
      test_word = Word.new('definition', 'noun', 'def i ni tion')
      expect(test_word.type).to(eq('noun'))
    end
  end

  describe('#syllable') do
    it('returns the word seperated at each syllable') do
      test_word = Word.new('definition', 'noun', 'def i ni tion')
      expect(test_word.syllable).to(eq('def i ni tion'))
    end
  end

  describe('#word') do
    it('returns the word') do
      test_word = Word.new('definition', 'noun', 'def i ni tion')
      expect(test_word.word).to(eq('definition'))
    end
  end

  describe('#save') do
    it('save a new word') do
      test_word = Word.new('definition', 'noun', 'def i ni tion')
      expect(test_word.save).to(eq([test_word]))
    end
  end

end

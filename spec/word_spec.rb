require('rspec')
require ('word')

describe(Word) do
  before() do
    Word.clear()
  end

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

  describe('#id') do
      it('returns the id associated with a word') do
        test_word = Word.new('definition', 'noun', 'def i ni tion')
        test_word.save()
        expect(test_word.id()).to(eq(1))
      end
  end


  describe(".all") do
    it("returns all entries, is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('clears the array of all entries') do
      Word.new('definition', 'noun', 'def i ni tion').save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('finds a word by id') do
      test_word = Word.new('definition', 'noun', 'def i ni tion')
      test_word.save()
      test_word2 = Word.new('quaggy', 'adjective', 'quag·gy')
      test_word2.save()
      expect(Word.find(test_word2.id())).to(eq(test_word2))
    end
  end


end

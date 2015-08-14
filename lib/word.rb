class Word
  @@words = []

  define_method(:initialize) do | word, type, syllable |
    @word = word
    @type = type
    @syllable = syllable
    @definition = []
  end

  define_method(:type) do
    @type
  end

  define_method(:syllable) do
    @syllable
  end

  define_method(:word) do
    @word
  end


  define_method(:save) do
    @@words.push(self)
  end

  # define_singleton_method()

end

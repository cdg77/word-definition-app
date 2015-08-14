class Word
  @@words = []

  define_method(:initialize) do | word, type, syllable |

    @word = word
    @type = type
    @syllable = syllable
    @definition = []
    @id = @@words.length().+(1)
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

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:find) do |identifyer|
    found_word = nil
    @@words.each() do |word|
      if word.id() == (identifyer.to_i())
        found_word = word
      end
    end
    found_word
  end


end

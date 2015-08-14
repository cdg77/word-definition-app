class Word

  attr_reader(:word, :type, :syllable, :id, :definition)

  @@words = []

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @type = attributes.fetch(:type)
    @syllable = attributes.fetch(:syllable)
    @definitions = []
    @id = @@words.length().+(1)
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

  define_method(:add_definition) do |definition|
    @definitions.push(definitiion)
  end


end

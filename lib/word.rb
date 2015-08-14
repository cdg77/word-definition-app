class Word

  define_method(:initialize) do | type, syllable |
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

end

class Word

  define_method(:initialize) do | type, syllables |
    @type = type
    @syllables = syllables
    @definition = []
  end

  define_method(:type) do
    @type
  end

end

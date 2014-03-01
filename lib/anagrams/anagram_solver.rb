class AnagramSolver

  def initialize(words=[])
    # anagrams have the same length and contain the same letters
    # so, using 'words', build a hash where the keys are sorted
    # strings and the values contain anagrams for each sorted string
    @dictionary = {}
    words.each do |word|
      key = sorted_string(word)
      if @dictionary[key]
        @dictionary[key] += ' '+word
      else
        @dictionary[key] = word
      end
    end
  end

  def anagrams_for(word)
    key = sorted_string(word)
    @dictionary[key]
  end

  def sorted_string(word)
    word.split(//).sort.join
  end

end

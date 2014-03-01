require 'spec_helper'

module Anagrams

  describe AnagramSolver do

    it 'sorts a string' do
      as = AnagramSolver.new
      expect(as.sorted_string('blah')).to eq 'abhl'
    end

    it 'builds a hash from a list of words' do
      as = AnagramSolver.new %w(the cat dog car god)
      dictionary = as.instance_variable_get(:@dictionary)
      expect(dictionary).to be_a(Hash)
    end

    it 'gets anagrams for a given word' do
      as = AnagramSolver.new %w(the cat dog car god)
      expect(as.anagrams_for('dog')).to eq 'dog god'
    end

  end

end

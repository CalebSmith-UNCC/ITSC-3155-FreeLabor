require 'fun_with_strings'
require 'byebug'

RSpec.configure do |config|
  config.filter_run_excluding :disabled => true
end

describe 'palindrome detection' do
  it 'should work for simple strings [10 points]' do
    expect('redivider').to be_palindrome
    expect('abracadabra').not_to be_palindrome
  end
  it 'should be case-insensitive [10 points]' do
    expect('ReDivider').to be_palindrome
  end
  it 'should ignore nonword characters [10 points]' do
    expect('A man, a plan, a canal -- Panama').to be_palindrome
    expect("Madam, I'm Adam!").to be_palindrome
  end    
end

describe 'word count', :disabled => true do
  it 'should return a hash [5 points]' do
    expect('now is the time'.count_words).to be_a_kind_of(Hash)
  end
  it 'works on simple strings [10 points]' do
    expect('Doo bee doo bee doo'.count_words).to be == {'doo' => 3, 'bee' => 2}
  end
  it 'ignores punctuation [5 points]' do
    expect('A man, a plan, a canal -- Panama!'.count_words).to be ==
      {'man' => 1, 'plan' => 1, 'canal' => 1, 'a' => 3, 'panama' => 1}
  end
  it 'works on the empty string [10 points]' do
    expect(''.count_words).to be == {}
  end
  it 'ignores leading whitespace [10 points]' do
    expect("  toucan".count_words).to be == {'toucan' => 1 }
  end
  it 'ignores embedded whitespace [10 points]' do
    expect("four   four  \n four \t four!".count_words).to be == {'four' => 4}
  end
end

describe 'anagram grouping', :disabled => true do
  describe 'sanity checks' do
    it 'should work on the empty string [5 points]' do
      expect(''.anagram_groups).to eq([])
    end
    it 'should return an array of arrays for nonempty string [5 points]' do
      'x'.anagram_groups.each { |element| expect(element).to be_a_kind_of(Array) }
    end
  end
  it 'for "scream cars for four scar creams" [10 points]' do
    @anagrams =  'scream cars for four scar creams'.anagram_groups
    @anagrams.each { |group| group.sort! }
    [%w(cars scar), %w(four), %w(for), %w(creams scream)].each do |group|
        expect(@anagrams).to include(group)
    end
  end
    
end

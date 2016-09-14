require_relative 'spec_helper'

# require_relative '../lib/version'
# require_relative '../lib/ruby-skyline-core'

describe RubySkylineCore do
  it 'has a version number' do
    expect(RubySkylineCore::VERSION).not_to be nil
  end
end

describe Array do
  describe '#dominate?' do
    it '[1, 2] should dominate [3, 4]' do
      expect([1, 2].dominate?([3, 4])).to be true
    end

    it '[3, 4] should be dominated [1, 2]' do
      expect([3, 4].dominate?([1, 2])).to be false
    end

    it '[3, 2] should not dominate [1, 4]' do
      expect([3, 2].dominate?([1, 4])).to be_nil
    end

    it '[3, 2] and [1, 4, 5] should raise ArgumentError' do
      expect{[3, 2].dominate?([1, 4, 5])}.to raise_error(ArgumentError)
    end

    it '[3, 2] and 4 should raise ArgumentError' do
      expect{[3, 2].dominate?(4)}.to raise_error(ArgumentError)
    end
  end

  describe '#aggregate' do
    it '[1, 2] aggregates [3, 4] should be [4, 6]' do
      expect([1, 2].aggregate([3, 4])).to match_array([4, 6])
    end

    it '[3, 2] aggregates [1, 4, 5] should raise ArgumentError' do
      expect{[1, 2].aggregate([1, 4, 5])}.to raise_error(ArgumentError)
    end

    it '[3, 2] aggregates 4 should raise ArgumentError' do
      expect{[1, 2].aggregate(4)}.to raise_error(ArgumentError)
    end
  end
end
require 'spec_helper'

RSpec.describe 'Parser Functional Test' do
  describe 'parse' do
    it 'should raise error on parse' do
      expect { Parser.new(',').parse(nil,nil) }.to raise_error('not implemented')
    end
  end

  describe '#find' do
    it 'should return correct parser' do
      expect(Parser.find(:csv)).to eq(CSVParser)
      expect(Parser.find(nil)).to eq(Default)
    end
  end
end

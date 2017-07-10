require_relative 'delete'

RSpec.describe Delete do
  context 'methods' do
    describe '.distance' do
      it 'returns distance and letters taken out' do
      end
    end

    describe '#find_common_string' do
      it 'returns a string' do
        string1 = 'notHello'
        string2 = 'Helloyou'
        d = Delete.new(string1, string2)
        result = d.find_common_string(string2, string1)


        expect(result).to be_kind_of(String)
      end

      it 'returns common string depending on comparison' do
        string1 = 'notHello'
        string2 = 'Helloyou'
        d = Delete.new(string1, string2)
        
        result = d.find_common_string(string2, string1)
        expect(result).to eq('Hello')

        result = d.find_common_string(string1, string2)
        expect(result).to eq('oo')
      end
    end

    describe '#best_match' do
      it 'returns string' do
        string1 = 'notHello'
        string2 = 'Helloyou'
        d = Delete.new(string1, string2)
        
        result = d.best_match(string1, string2)
        expect(result).to be_kind_of(String)
      end

      it 'returns largest match' do
        string1 = 'notHello'
        string2 = 'Helloyou'
        d = Delete.new(string1, string2)
        
        result = d.best_match(string1, string2)
        expect(result).to eq("Hello")
      end
    end






  end
end

require_relative '../exercises/exercise_3'

describe 'lovefunc' do
  context 'When args are numbers' do
    context 'When uses 2 arguments' do
      it 'return false for two arguments even' do 
        expect(lovefunc(2,4)).to be false
      end
  
      it 'return false for two arguments odd' do
        expect(lovefunc(5,3)).to be false
      end
  
      it 'return true if first is odd and second is even' do
        expect(lovefunc(5,2)).to be true
      end
  
      it 'return true if first is even and second is odd' do
        expect(lovefunc(8,9)).to be true 
      end
    end

    context 'When pass only 1 argument' do
      it 'return a argumentError' do
        expect {lovefunc(8)}.to raise_error(ArgumentError)
      end
    end
  end

  context 'When args arent numbers' do
    it 'return a NoMethodError' do
      expect {lovefunc('1234','3232')}.to raise_error(NoMethodError)
    end
  end
end
require_relative '../exercises/exercise_2'

describe 'make_upper_case' do
  context 'When args are strings' do
    context 'If argument is in lower case' do
      it 'transform a string to a upper case string' do 
        expect(make_upper_case('hidemi')).to eq('HIDEMI')
      end
    end
    
    it 'return all letters in upper case' do
      expect(make_upper_case('hIdemi')).to eq('HIDEMI')
    end

    it 'return all letters in upper case' do
      expect(make_upper_case('HIDEMI')).to eq('HIDEMI')
    end

    it 'return all letters in upper case and ignore numbers and symbols' do
      expect(make_upper_case('hidemi741$*')).to eq('HIDEMI741$*')
    end
  end

  context 'When args arent strings' do
    it 'return a NoMethodError' do
      expect {make_upper_case(1234)}.to raise_error(NoMethodError)
    end
  end
end
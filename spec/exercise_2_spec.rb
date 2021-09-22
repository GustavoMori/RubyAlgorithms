require_relative '../exercises/exercise_2'

describe 'make_upper_case' do
  context 'When args are strings' do
    it 'If argument is in lower case' do 
      expect(make_upper_case('hidemi')).to eq('HIDEMI')
    end

    it 'If any letter in string already in upper case' do
      expect(make_upper_case('hIdemi')).to eq('HIDEMI')
    end

    it 'If all characters in string already in upper case' do
      expect(make_upper_case('HIDEMI')).to eq('HIDEMI')
    end

    it 'If any characters in string is special characters or numbers' do
      expect(make_upper_case('hidemi741$*')).to eq('HIDEMI741$*')
    end
  end

  context 'When args arent strings' do
    it 'If the argument is a number' do
      expect {make_upper_case(1234)} .to raise_error(NoMethodError)
    end
  end

end
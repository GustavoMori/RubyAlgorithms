require_relative '../exercises/exercise_1'

describe 'between' do
  context 'When all args are integers, 1st < 2nd and different' do
    it 'Return array all integers between the input args including them' do
      between_result = between(1, 4)
      expect(between_result).to eq([1, 2, 3, 4])
    end
  end

  context 'When args are integers but 1st isnt < 2nd' do
    it 'If args are equal must return one of them' do
      between_result_equal_arguments = between(4,4)
      expect(between_result_equal_arguments).to eq([4])
    end

    it 'If 1st > 2nd must return a array empty' do
      expect(between(4,1)).to eq([])
    end
  end

  context 'When args arent integers' do
    it 'If args are strings must return a array of strings with values between the arguments' do
      between_result_string_arguments = between("1", "4")
      expect(between_result_string_arguments).to eq(["1", "2", "3", "4"])
    end
  end
end
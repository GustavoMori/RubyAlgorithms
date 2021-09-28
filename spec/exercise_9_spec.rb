require_relative '../exercises/exercise_9'

describe Array do
  context 'When use method second' do
    it 'return the second item in array' do
      expect([1,3,5,7,9].second).to eq(3)
    end

    it 'return nil if array size < 1' do
      expect([1].second).to be_nil
    end
  end
end
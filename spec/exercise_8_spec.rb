require_relative '../exercises/exercise_8'

describe 'compute' do
  context 'When block is given' do
    it 'return the result of block' do
      expect(compute { 2+2 }).to be 4
    end
  end
  context 'When block isnt given' do
    it 'return "Do not compute"' do
      expect(compute).to eq("Do not compute")
    end
  end
end

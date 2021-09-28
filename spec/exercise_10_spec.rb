require_relative '../exercises/exercise_10'
#dá naum
describe 'log' do
  # context 'When dont pass a block' do
  #   it 'return LocalJumpError' do
  #     expect(log(1)).to raise_error('comecei' LocalJumpError)
  #   end
  # end
  context 'When pass a block' do
    it 'return "comecei" argument + 1 "terminei" ' do
      expect(log(1) { |t| puts t }).to eq(puts 'terminei')
    end
  end
end
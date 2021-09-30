require_relative '../exercises/exercise_16'

describe '#lazy' do 
  it 'return last result of block' do
    expect(lazy { 2 + 2}).to eq(4)
  end

  it 'execute the block two times' do
    many_times_block_executed = 0
    lazy { many_times_block_executed += 1 }
    expect(many_times_block_executed).to eq(2)
  end
end
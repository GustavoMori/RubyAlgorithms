require_relative '../exercises/exercise_16'

describe '#lazy' do 
  it 'return last result of block' do
    expect(lazy { 2 + 2}).to eq(4)
  end

  it 'execute the block two times' do
    xablau = 0
    lazy { xablau += 1 }
    expect(xablau).to eql(2)
  end
end
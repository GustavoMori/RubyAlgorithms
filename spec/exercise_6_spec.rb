require_relative '../exercises/exercise_6'

describe 'god' do
  it 'Must return [Man.new, Woman.new]' do
    expect(god[0]).to be_instance_of(Man)
    expect(god[1]).to be_instance_of(Woman)
  end
end

describe Man do
  it 'Can be instance of Man' do
    expect(Man.new).to be_instance_of(Man)
  end

  it 'Extends Human' do
    expect(Man.new).to be_kind_of(Human)
  end
end

describe Woman do
  it 'Can be instance of Woman' do
    expect(Woman.new).to be_instance_of(Woman)
  end

  it 'Extends Human' do
    expect(Woman.new).to be_kind_of(Human)
  end
end
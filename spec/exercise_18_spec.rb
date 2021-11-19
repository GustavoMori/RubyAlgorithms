require_relative '../exercises/exercise_18'


describe '#count_words' do
  it 'return the key and value corrects' do
    expect(count_words("Doo bee doo bee doo")).to eq({ "doo" => 3, "bee" => 2 })
  end
end

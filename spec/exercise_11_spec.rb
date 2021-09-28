require_relative '../exercises/exercise_11'

describe Person do
  context 'When use .name' do
    it 'return the value of name' do
      person = Person.new('Guizaum')
      expect(person.name).to eq('Guizaum')
    end
  end
  context 'When use Method greet' do
    it 'return a greet with argument and your name' do
      person = Person.new('Guizaum')
      expect(person.greet('Okazera')).to eq("Hello Okazera, my name is Guizaum")
    end
  end
end
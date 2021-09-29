require_relative '../exercises/exercise_14'

describe Dessert do

  let(:dessert) { Dessert.new('Bomba de Chocolate', 201) }

  context 'When use getter and setters of attributes' do

    it 'return the value of name' do
      expect(dessert.name).to eq('Bomba de Chocolate')
    end

    it 'return the value of calories' do
      expect(dessert.calories).to eq(201)
    end

    it 'set a new value of name' do
      expect(dessert.name = 'Cookie de red velvet').to eq('Cookie de red velvet')
    end

    it 'set a new value of calories' do
      expect(dessert.calories = 501).to eq(501)
    end
  end

  context 'When use methods to check if is healthy or delicious' do
    
    it 'return true if calories < 200' do
      expect(dessert).not_to be_healthy
    end

    it 'return true' do
      expect(dessert).to be_delicious
    end
  end
end

describe JellyBean do
  
  let(:jelly_bean) { JellyBean.new('Jelly Belly', 105, 'black licorice') }

  context 'When use getter and setters of attributes' do

    it 'return the value of name' do
      expect(jelly_bean.name).to eq('Jelly Belly')
    end

    it 'return the value of calories' do
      expect(jelly_bean.calories).to eq(105)
    end

    it 'return the value of flavor' do
      expect(jelly_bean.flavor).to eq('black licorice')
    end

    it 'set a new value of name' do
      expect(jelly_bean.name = 'Fini').to eq('Fini')
    end

    it 'set a new value of calories' do
      expect(jelly_bean.calories = 95).to eq(95)
    end

    it 'set a new value of flavor' do
      expect(jelly_bean.flavor = 'strawberry').to eq('strawberry')
    end
  end

  context 'When use methods to check if is healthy or delicious' do
    
    it 'return true if calories < 200' do
      expect(jelly_bean).to be_healthy
    end

    it 'return false if calories >= 200' do
      jelly_bean_hypercaloric = JellyBean.new('Jelly Belly', 2300, 'strawberry')
      expect(jelly_bean_hypercaloric).not_to be_healthy
    end

    it 'return true if flavor != black licorice' do
      jelly_bean_strawberry = JellyBean.new('Jelly Belly', 105, 'strawberry')
      expect(jelly_bean_strawberry).to be_delicious
    end

    it 'return false if flavor == black licorice' do
      expect(jelly_bean).not_to be_delicious
    end
  end
end
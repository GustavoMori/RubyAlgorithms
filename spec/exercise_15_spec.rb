require_relative '../exercises/exercise_15'

describe Refrigerator do 
  
  describe '#opened' do
    context 'When do not pass a argument' do
      it 'return by default false' do
        geladeira = Refrigerator.new
        expect(geladeira.opened).to be false
      end
    end

    context 'When pass a argument' do
      it 'return equal argument' do
        geladeira = Refrigerator.new(true)
        expect(geladeira.opened).to be true
      end
    end
  end

  describe '#open!' do
    it 'return attribute opened = true if is already closed' do
      geladeira = Refrigerator.new
      expect(geladeira.open!).to be true
    end

    it 'return a error if it is already opened' do
      geladeira = Refrigerator.new(opened = true)
      expect { geladeira.open! }.to raise_error(Refrigerator::AlreadyOpenedError)
    end
  end

  describe '#close!' do
    it 'return attribute opened = false if is already opened' do
      geladeira = Refrigerator.new(opened = true)
      expect(geladeira.close!).to be false
    end

    it 'return a error if it is already opened' do
      geladeira = Refrigerator.new
      expect { geladeira.close! }.to raise_error(Refrigerator::AlreadyClosedError)
    end
  end

  describe '#see_inside!' do
    it 'if is already opened return value of inside' do
      geladeira = Refrigerator.new(opened = true)
      geladeira.put_inside!("chocolate")
      geladeira.put_inside!("cafezinho")
      expect(geladeira.see_inside!).to eq(["chocolate", "cafezinho"])
    end

    it 'return a error if it isnt opened' do
      geladeira = Refrigerator.new
      expect { geladeira.see_inside! }.to raise_error(Refrigerator::MustBeOpenedError)
    end
  end

  describe '#put_inside!' do
    it 'push more itens inside of refrigerator' do
      geladeira = Refrigerator.new(opened = true)
      expect(geladeira.put_inside!("chocolate")).to eq(["chocolate"])
    end

    it 'return a error if it isnt opened' do
      geladeira = Refrigerator.new
      expect { geladeira.put_inside!("chocolate") }.to raise_error(Refrigerator::MustBeOpenedError)
    end
  end

  describe '#withdraw!' do
    it 'return a error if it isnt opened' do
      geladeira = Refrigerator.new
      expect { geladeira.withdraw!("chocolate") }.to raise_error(Refrigerator::MustBeOpenedError)
    end

    it 'return a error if dont have item inside' do
      geladeira = Refrigerator.new(opened = true)
      expect { geladeira.withdraw!("chocolate") }.to raise_error(Refrigerator::ItemNotFoundError)
    end

    it 'return item withdrawn' do
      geladeira = Refrigerator.new(opened = true)
      geladeira.put_inside!("chocolate")
      geladeira.put_inside!("açai")
      geladeira.put_inside!("canole")
      expect(geladeira.withdraw!("chocolate")).to eq("chocolate")
    end
  end
end
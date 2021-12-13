require_relative '../exercises/exercise_15'

describe Refrigerator do
  describe '#opened' do
    context 'When do not pass a argument' do
      it 'return by default false' do
        geladeira = Refrigerator.new
        expect(geladeira).not_to be_opened
      end
    end

    context 'When pass a argument' do
      it 'return equal argument' do
        geladeira = Refrigerator.new(true)
        expect(geladeira).to be_opened
      end
    end
  end

  describe '#open!' do
    it 'return attribute opened = true if is already closed' do
      geladeira = Refrigerator.new
      geladeira.open!
      expect(geladeira).to be_opened
    end

    it 'return a error if it is already opened' do
      geladeira = Refrigerator.new true
      expect { geladeira.open! }.to raise_error(Refrigerator::AlreadyOpenedError)
    end
  end

  describe '#close!' do
    it 'return attribute opened = false if is already opened' do
      geladeira = Refrigerator.new true
      geladeira.close!
      expect(geladeira).not_to be_opened
    end

    it 'return a error if it is already opened' do
      geladeira = Refrigerator.new
      expect { geladeira.close! }.to raise_error(Refrigerator::AlreadyClosedError)
    end
  end

  describe '#see_inside!' do
    it 'if is already opened return value of inside' do
      geladeira = Refrigerator.new true
      geladeira.put_inside!("chocolate")
      geladeira.put_inside!("cafezinho")

      inside = geladeira.see_inside!

      expect(inside).to eq(["chocolate", "cafezinho"])
    end

    it 'return a error if it isnt opened' do
      geladeira = Refrigerator.new
      expect { geladeira.see_inside! }.to raise_error(Refrigerator::MustBeOpenedError)
    end
  end

  describe '#put_inside!' do
    it 'push more itens inside of refrigerator' do
      geladeira = Refrigerator.new true

      geladeira.put_inside!("chocolate")
      geladeira_inside = geladeira.see_inside!

      expect(geladeira_inside).to eq(["chocolate"])
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
      geladeira = Refrigerator.new true
      expect { geladeira.withdraw!("chocolate") }.to raise_error(Refrigerator::ItemNotFoundError)
    end

    it 'return item withdrawn' do
      geladeira = Refrigerator.new true
      geladeira.put_inside!("chocolate")
      geladeira.put_inside!("açai")
      geladeira.put_inside!("canole")

      withdrawn = geladeira.withdraw!("chocolate")

      expect(withdrawn).to eq("chocolate")
    end

    it 'remove item from refrigerator' do
      geladeira = Refrigerator.new true
      geladeira.put_inside!("chocolate")
      geladeira.put_inside!("açai")
      geladeira.put_inside!("canole")

      geladeira.withdraw!("chocolate")
      geladeira_inside = geladeira.see_inside!

      expect(geladeira_inside).to eq(["açai", "canole"])
    end
  end

  describe '#use' do
    it 'execute a block between open/close the refrigerator' do
      geladeira = Refrigerator.new

      geladeira.use { |n| n.put_inside!("chocolate") }

      geladeira.open!
      expect(geladeira.see_inside!).to eq(["chocolate"])
    end

    it 'closes refrigerator' do
      geladeira = Refrigerator.new

      geladeira.use { |n| n.put_inside!("chocolate") }

      expect(geladeira).not_to be_opened
    end

    it 'return AlreadyOpenedError' do
      geladeira = Refrigerator.new true
      expect { geladeira.use {} }.to raise_error(Refrigerator::AlreadyOpenedError)
    end
  end
end

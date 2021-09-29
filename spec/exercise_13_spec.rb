require_relative '../exercises/exercise_13'

describe Block do

  context 'When args in array are numbers' do
    
    let(:block1) { Block.new([1,5,9]) }

    context 'When use getter methods of attributes' do

      it 'return value of width' do
        expect(block1.get_width).to eq(1)
      end

      it 'return value of length' do
        expect(block1.get_length).to eq(5)
      end

      it 'return value of height' do
        expect(block1.get_height).to eq(9)
      end
    end

    context 'When use methods to get Volume or Surface Area' do

      it 'return value of volume' do
        expect(block1.get_volume).to eq(45)
      end

      it 'return value of surface area' do
        expect(block1.get_surface_area).to eq(118)
      end
    end
  end

  context 'When args in array are strings' do

    let(:block2) { Block.new(["1","5","9"]) }

    it 'return value of width' do
      expect(block2.get_width).to eq("1")
    end

    it 'return value of length' do
      expect(block2.get_length).to eq("5")
    end

    it 'return value of height' do
      expect(block2.get_height).to eq("9")
    end

    it 'return value of volume' do
      expect { block2.get_volume }.to raise_error(TypeError)
    end

    it 'return value of surface area' do
      expect { block2.get_surface_area }.to raise_error(TypeError)
    end
  end
end
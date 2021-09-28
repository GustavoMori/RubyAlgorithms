require_relative '../exercises/exercise_12'

describe Array do
  context 'self each' do
    it 'execute the block then, return equal the argument' do
      #Arrange
      array = [1,2,3,4,5]
      #Act
      result = array.each { |x| x + 1 }
      #Assert
      expect(result).to eq([1,2,3,4,5])
    end

    it 'execute the block and test it' do
      #Arrange
      funcao = double('funcao')
      allow(funcao).to receive :xablau
      array = [1,2,3,4,5]
      #Act
      result = array.each { |x| funcao.xablau(x) }
      #Assert
      expect(funcao).to have_received(:xablau).with(1)
    end
  end
end
#Arrange, como preparar as dependencias do teste
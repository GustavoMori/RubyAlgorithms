require_relative '../exercises/exercise_7'

describe Ship do
  context 'When args are numbers' do
    context 'When try acess or read the attributes' do
      it 'return NoMethodError' do 
        ship = Ship.new(15,20)
        expect {ship.draft}.to raise_error(NoMethodError)
      end
      
      it 'return NoMethodError' do 
        ship = Ship.new(15,20)
        expect {ship.crew}.to raise_error(NoMethodError)
      end

      it 'return NoMethodError' do 
        ship = Ship.new(15,20)
        expect {ship.draft = 16}.to raise_error(NoMethodError)
      end

      it 'return NoMethodError' do 
        ship = Ship.new(15,20)
        expect {ship.crew = 16}.to raise_error(NoMethodError)
      end
    end

    context 'When use worth_it? method' do
      it 'return true if is worthy to loot the ship' do
        ship = Ship.new(900,1)
        expect(ship).to be_worth_it
      end
  
      it 'return false if isnt worthy to loot the ship' do
        ship = Ship.new(1,900)
        expect(ship).not_to be_worth_it
      end
    end
  end
end
require_relative '../exercises/exercise_4'

describe 'is_palindrome' do
  context 'When argument is a string' do
    it 'return true if arg is a palindrome considering first letter and last letter in upper case' do 
      expect(is_palindrome('XablauualbaX')).to be true
    end

    it 'return false if arg is not a palindrome' do 
      expect(is_palindrome('xablau')).to be false
    end

    it 'return true if arg is a palindrome but with upper cases and lower cases randomly' do 
      expect(is_palindrome('xablAuUalbaX')).to be true
    end

    it 'return true if arg is a palindrome but with upper cases and lower cases randomly and numbers' do 
      expect(is_palindrome('4xablAu11UalbaX4')).to be true
    end
  end

  context 'When args isnt string' do
    it 'return a NoMethodError' do
      expect {is_palindrome(221122)}.to raise_error(NoMethodError)
    end
  end
end
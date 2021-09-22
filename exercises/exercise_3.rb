#Timmy & Sarah think they are in love, but around where they live, they will only know once they pick a flower each. 
#If one of the flowers has an even number of petals and the other has an odd number of petals it means they are in love.

#Write a function that will take the number of petals of each flower and return true if they are in love and false if they aren't.


def lovefunc(flower1, flower2)
  flower1Odd = flower1.odd?
  flower2Odd = flower2.odd?
  flower1Even = flower1.even?
  flower2Even = flower2.even?
  
  firstOddSecondEven = flower1Odd && flower2Even
  firstEvenSecondOdd = flower1Even && flower2Odd

  inLove = firstOddSecondEven || firstEvenSecondOdd
  
  return inLove
end

#**
def lovefunc(flower1, flower2)
  flower1_odd = flower1.odd?
  flower2_odd = flower2.odd?
  flower1_even = flower1.even?
  flower2_even = flower2.even?
  
  first_oddSecondEven = flower1Odd && flower2Even
  firstEvenSecondOdd = flower1Even && flower2Odd

  inLove = firstOddSecondEven || firstEvenSecondOdd
  
  return inLove
end

#****
def lovefunc(flower1, flower2)
  (flower1.odd? && flower2.even?) || (flower1.even? && flower2.odd?)
end


#*****
def lovefunc(flower1, flower2)
  (flower1 + flower2).odd?
end
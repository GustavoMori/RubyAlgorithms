#Create a class Ball. Ball objects should accept one argument for "ball type" when instantiated.

#If no arguments are given, ball objects should instantiate with a "ball type" of "regular."


class Ball
  attr_reader :type
  def initialize(type = "regular")
    @type = type
  end

  def ball_type
    @type
  end
end




# class Ball
#   # attr_reader :ball_type
#   # attr_writer :ball_type
#   attr_accessor :ball_type, :size
#   def initialize(type = "regular")
#     @ball_type = type
#     @size = size
#   end

#   def ball_type_and_size
#     "#{@ball_type} #{size}"
#   end
#   # def ball_type #geter em ruby
#   #   @ball_type
#   # end

#   # def ball_type= (new_type) #seter em ruby
#   #   @ball_type = new_type
#   # end
# end

# ##gera uma instancia de ball, printa type dela, muda o type, e printa de novo
# ball0 = Ball.new 'futebol'
# # puts ball0.ball_type
# ball0.ball_type = 'volei'
# #ball0.ball_type=('volei')
# # puts ball0.ball_type
# puts ball0.ball_type
# puts ball0.size= 'grandona'
# puts ball0.size
# puts ball0.ball_type_and_size


# ball1 = Ball.new
# ball1.ball_type  #=> "regular"
# ball1.ball_type = 'super'


# ball2 = Ball.new "super"
# ball2.ball_type  #=> "super"
require_relative '../exercises/exercise_5'

describe Ball do
  context 'When initialize create type and edit type' do
    it 'return "regular" as default to attribute type' do 
      ball = Ball.new
      expect(ball.type).to eq("regular")
    end

    it 'return argument to attribute type' do
      ball = Ball.new("xablau")
      expect(ball.type).to eq("xablau")
    end

    it 'return type of ball' do
      ball = Ball.new
      expect(ball.ball_type).to eq("regular")
    end

    it 'return argument independently data type' do
      ball = Ball.new(123)
      expect(ball.type).to eq(123)
    end
  end
end
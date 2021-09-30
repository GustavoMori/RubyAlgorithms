# fazer uma class Refrigerator [x]
# tenho que conseguir colocar coisas nela [x]
# só pode colocar coisas se ela estiver aberta [x]
# nao pode abrir quando ela ja estiver aberta []
# só posso verificar o q tem dentro se ja estiver aberta [x]
# só posso tirar coisas se ja estiver aberta [x]
# pra tirar as coisas eu só passo o nome das coisas q eu quero tirar [x]
# se tentar tirar/colocar/ver as coisas q tao dentro da geladeira e ela nao estiver aberta deve lançar um error "refrigator must be opened" [x]
# não pode chamar method close! fora da classe
# não pode criar um setter pra opened
# tem q inserir duas coisas na geladeira
# no final ela tem q estar fechada
# só pode abrir a geladeira uma vez


#nome de variaveis e methods => snake_case
#nome de classes => CamelCase


class Refrigerator
  attr_reader :opened
  
  class MustBeOpenedError < StandardError;end

  class AlreadyClosedError < StandardError;end

  class AlreadyOpenedError < StandardError;end

  class ItemNotFoundError < StandardError;end

  def initialize (opened = false)
    @opened = opened
    @inside = []
  end

  def open_put_close
    self.open!
    yield self
    self.close!
  end

  def open!
    if @opened
      raise AlreadyOpenedError
    else
      @opened = true
    end
  end

  def close!
    if !@opened
      raise AlreadyClosedError
    else
      @opened = false
    end
  end

  def see_inside! #exclamação por causa que lança error
    @opened ? @inside : (raise MustBeOpenedError)
  end

  def put_inside! str # exclamação por causa que muda um estado do objeto
    @opened ? @inside.push(str.to_s) : (raise MustBeOpenedError)
  end

  def withdraw! str
    if @opened
      if @inside.include?(str)
        @inside.delete(str)
      else 
        raise ItemNotFoundError
      end
    else
      raise MustBeOpenedError
    end
  end
end

# geladeira = Refrigerator.new()
# geladeira.open!
# begin
#   geladeira.see_inside!
# rescue Refrigerator::MustBeOpenedError
#   puts 'You forget to open the refrigerator, noob'
# end


# puts geladeira.open_put_close(3, 'café', 'cafézinho', 'bala de café')
# puts geladeira.open!
# puts geladeira.see_inside!
# geladeira.open_put_close do |n|
#   puts n.open!
#   puts n.put_inside!('cafe')
#   puts n.put_inside!('cafezinho')
#   puts n.see_inside!
#   puts n.withdraw!('cafe')
#   puts n.see_inside!
# end
# geladeira.open!
# geladeira.close!
# geladeira.see_inside!
# puts geladeira.see_inside # Não deixou ver dentro
# puts geladeira.open!
# puts geladeira.opened
# puts geladeira.close!
# puts geladeira.opened
# puts geladeira.close!





# # puts geladeira.see_inside # Agora deixou.
# puts geladeira.put_inside('cafe')
# puts "primeira olhadinha #{geladeira.see_inside}"
# puts geladeira.withdraw('xablau')
# puts geladeira.withdraw('cafe')
# puts "segunda olhadinha  #{geladeira.see_inside}"

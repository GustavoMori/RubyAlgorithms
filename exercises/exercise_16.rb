# Eu quero executar o mesmo código duas vezes mas eu escrevo ele apenas uma vez
# Crie um method para isso
#
def lazy
  yield
  yield
end

# lazy do |n|
#   puts n = 2+2
# end


# lazy do
#   puts 2+2
# end
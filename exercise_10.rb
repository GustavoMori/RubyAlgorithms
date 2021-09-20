### explanation of blocks
def log qualquer
  puts 'comecei'
  yield qualquer+1
  puts 'terminei'
end

log 1 do |t|
  puts t
end


log (1) { |t| puts t }
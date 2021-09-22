# Complete the Compute method/function so that if a block is given it will run else it returns "Do not compute".
def compute
  if block_given?
    yield
  else 
    "Do not compute"
  end
end

def compute
  return yield if block_given?
  "Do not compute"
end

#*****
def compute
  block_given? ? yield : "Do not compute"
end
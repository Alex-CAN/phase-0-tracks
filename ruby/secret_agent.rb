def secret_name 
  first = 'sally'
  last = 'sod'
  yield
end

p secret_name { |first, last|  p last.chars  first.chars}
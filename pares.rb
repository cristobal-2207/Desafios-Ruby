i    = 0
suma = 0
npar = ARGV[0].to_i

while i <= npar
    if i%2==0
        suma+=i
    end
    i+=1
end
puts suma
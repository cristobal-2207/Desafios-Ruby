#*.
num = ARGV[0].to_i
#num.times do |i|
#    print '*' if i.even?
#    print '.' if i.odd?
#end
#puts

#num.times do |i|
#    print i.even? ? '*' : '.'
#end
#puts

num.times { |i| print i.even? ? '*' : '.' }
puts

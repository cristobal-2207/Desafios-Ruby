#123
num = ARGV[0].to_i

num.times do |i|

    if i%3 == 1
        print '2'

    elsif i%3 == 2
        print '3'

    else i%3 == 0
        print '1'

    end

end
puts
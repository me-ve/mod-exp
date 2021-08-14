#!/bin/ruby

def greatest_common_divisor(a, b)
    while b != 0
        r = a % b
        a = b
        b = r
    end
    return a
end

def is_num(str)
    return str == str.to_i.to_s
end

if ARGV.length != 3
    puts "Usage: <name_of_program> <number> <exponent> <module>"
else
    for i in 0..2
        if !is_num(ARGV[i])
            puts "the #{ARGV[i]} is not a integer"
            exit(1)
        end
    end
    num = ARGV[0].to_i
    exp = ARGV[1].to_i
    mod = ARGV[2].to_i
    if mod == 1
        print "#{num}^#{exp} mod #{mod} = 0\n"
        exit(0)
    elsif mod > 1
        if exp < 0
            puts "The exponent must be zero or higher"
            exit(3)
        end
        result = 1
        if num != 1
            while exp > 0
                if exp % 2 == 1
                    result = (result * num) % mod
                end
                exp = exp >> 1
                num = (num * num) % mod
            end
        end
        print "#{ARGV[0]}^#{ARGV[1]} mod #{ARGV[2]} = #{result}\n"
    elsif
        puts "The module must be a positive number"
        exit(2)
    end
end
exit(0)

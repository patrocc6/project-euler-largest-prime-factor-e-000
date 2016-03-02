# Enter your object-oriented solution here!
class LargestPrimeFactor
    include Math

    def initialize(input)
        @input = input
    end

    def number
        return @input if prime?(@input)

        (2..sqrt(@input).round).reverse_each do |num|
            if @input%num == 0 && prime?(num)
                return num
            end
        end

        return nil
    end

    def prime?(number)
        if number <= 0
            return false
        end

        (2..sqrt(number).floor).reverse_each do |num|
            if number%num == 0
                return false
            end
        end

        return true
    end
    
end


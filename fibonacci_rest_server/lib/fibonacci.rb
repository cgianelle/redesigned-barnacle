module Calculations
    class Fibonacci
        def sequence(value)
            case value
            when 0
                return 0
            when 1
                return 1
            else
                sequence(value - 1) + sequence(value - 2)
            end
        end
    end
end
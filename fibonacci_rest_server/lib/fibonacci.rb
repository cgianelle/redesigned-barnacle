module Calculations
    GOLDEN_RATIO = (1 + Math.sqrt(5))/2
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

        def golden_ratio(value)
            (((GOLDEN_RATIO ** value) - ((1-GOLDEN_RATIO) ** value)) / Math.sqrt(5)).truncate()
        end
    end
end
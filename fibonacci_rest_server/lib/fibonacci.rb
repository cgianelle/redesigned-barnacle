module Calculations
    GOLDEN_RATIO = (1 + Math.sqrt(5))/2
    class Fibonacci
        attr_reader :cache
        def initialize
            @cache = Hash.new
        end

        def sequence(value)
            case value
            when 0
                return 0
            when 1..2
                return 1
            else
                return @cache[value] if @cache.key?(value)
                @cache[value] = sequence(value - 1) + sequence(value - 2)
            end
        end

        def golden_ratio(value)
            (((GOLDEN_RATIO ** value) - ((1-GOLDEN_RATIO) ** value)) / Math.sqrt(5)).truncate()
        end
    end
end
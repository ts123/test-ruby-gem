require "greeter/version"

module Greeter
    class Greeter
        def greet()
            hour = Time.now.hour
            return 'おはよう' if 5 <= hour && hour < 12
            return 'こんにちは' if 12 <= hour && hour < 18
            return 'こんばんは'
        end
        def foo()
            'foo'
        end
    end
end


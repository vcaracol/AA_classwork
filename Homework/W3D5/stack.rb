class Stack
    attr_accessor :stack
    def initialize
        @stack = []
    end
      
    def push(el)
        @stack.push(el)
    end
      
    def pop
        @stack.pop
    end
      
    def peek
        @stack[-1]
    end
end

stck = Stack.new
p stck
p stck.push("Hello")
p stck.push("World")
p stck.push("!")
p stck.pop
p stck.peek
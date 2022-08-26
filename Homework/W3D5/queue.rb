class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue

    end

    def peek

    end
end

p Queue.new
p Queue.enqueue("Hello")
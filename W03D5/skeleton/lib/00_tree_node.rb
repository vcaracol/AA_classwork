class PolyTreeNode
    attr_reader :parent, :children, :value
    
    def initialize(value)
        @value =  value
        @parent = nil
        @children = []
    end 

    def parent=(node)
        if node == nil
            @parent.children.delete(self)
            @parent = node
            return
        end

        if @parent != nil
            @parent.children.delete(self)
        end

        @parent = node
        @parent.children << self
    end

    def add_child(child)
            self.children.delete(child)
            child.parent = self
            
            if !self.children.include?(child) 
                self.children << child
            end
    end

    def remove_child(child)
        # self.child.parent=nil
        self.children.delete(child)
        child.parent = nil
    end
    
    
    end

end

class Stack
    def initialize
        @nodes=[]
    end 
    
    def dfs(nod)
        stack=Stack.new
        stack.push(self)
        until stack.empty?
            



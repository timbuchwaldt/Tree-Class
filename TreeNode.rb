class TreeNode
  attr_accessor :left, :right,:value,:root
  def initialize options={}
      opts = {
       :left   => nil,
       :right => nil,
       :root   => nil,
       :value => rand(40)
      }.merge options
      @left=opts[:left]
      @right=opts[:right]
      @value=opts[:value]
      @root=opts[:root]
  end
  def find(v)
    return nil if self.root == nil
    n = root.findsubtree(v)
    unless n.nil? 
      return n.value 
    else
       return nil
     end
  end
  def findsubtree(v)
    if(v>@value)
      return right==nil ? nil: right.findsubtree(v)
    elsif(v<@value)
      return left==nil ? nil: right.findsubtree(v)
    else 
      return self
    end
  end
  def insert(node)
   if(node.value < @value)
     unless @left==nil 
        @left.insert(node) 
      else
        @left=node 
        @left.root=self
      end
    elsif(node.value >@value)
        unless @right==nil 
           @right.insert(node) 
         else
           @right=node 
           @right.root=self
         end
    else
        @value = node.value
     end
  end
  def to_s
    return "#{@value}"
  end
  def dump
    return "Node #{@value}, Root:#{@root}, Left:#{@left}, Right:#{@right}"
  end
end
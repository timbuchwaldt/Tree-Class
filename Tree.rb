class Tree
  include Enumerable
  attr_accessor :root_node
  def each &block
    value_array = []
    value_array = @root_node.to_a []
    value_array.each{|member| block.call(member)}
  end
  def to_s
    return self.root_node
  end
  def gv
    return "digraph #{rand(10)} {#{@root_node.gv} }"
  end
  def find(v)
    return nil if @root_node == nil
    n = @root_node.findsubtree(v)
    unless n.nil?
      return n
    else
      return nil
    end
  end
  def insert(n)
    node = TreeNode.new(:value => n)3
    if @root_node.nil?
      @root_node=node
    else
      @root_node.insert(node)
    end
  end
  def delete(key)
    return if @root_node == nil
    if @root_node.value == key
      if @root_node.left == nil && @root_node.right == nil
        @root_node = nil
        return
      elsif @root_node.left == nil
        @root_node = @root_node.right
        @root_node.root = nil
      end
    end
    node = @root_node.findsubtree(key)
    node.delete unless node.nil?
  end
end

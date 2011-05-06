class TreeNode
  #Create getters and Setters
  attr_accessor :left, :right,:value,:root,:data
  #Initialize datastructure with useful defaults
  def initialize options={}
    opts = {
      :left   => nil,
      :right => nil,
      :root   => nil,
      :value => rand(40),
      :data => "Foo"
    }.merge options
    @left=opts[:left]
    @right=opts[:right]
    @value=opts[:value]
    @root=opts[:root]
    @data=opts[:data]
  end
  # find a node by its value
  def findsubtree(v)
    if(v > @value)
      return right==nil ? nil: right.findsubtree(v)
    elsif(v < @value)
      return left==nil ? nil: right.findsubtree(v)
    else
      return self
    end
  end
  #insert a given node
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
  #makes us "put-able"
  def to_s
    return "#{@value}"
  end
  #stupid dump action
  def dump
    return "Node #{@value}, Root:#{@root}, Left:#{@left}, Right:#{@right}"
  end
  #recursive graphviz generation
  def gv
    g = ""
    unless @left.nil?
      g += @left.gv
      g += "\"#{@value}\" -> \"#{@left.value}\";"
    end
    unless @right.nil?
      g += @right.gv
      g += "\"#{@value}\" -> \"#{@right.value}\";"
    end
    if @right.nil? && @left.nil?
      return "\"#{@value}\""
    end
    return g
  end
  # Deletion-action
  def delete
    #are we alone down here? just die an no one cares (except our parents)
    if @left.nil? && @right.nil?
      if @root.left == self
        @root.left = nil
      else
        @root.right = nil
      end
      #got right children? gotta take care of them
    elsif @left.nil?
      if @root.left == self
        @root.left = @right
      else
        @root.right = @right
      end
      @right.root = @root
      #got left children,so our biggest one will replace us
    else
      max = @left
      while (!max.right.nil?)
        max = max.right
      end
      @value = max.value
      max.delete()
    end
  end
  def rotateright
    p = @root
    a = @left
    d = @right
    b = a.left
    c = a.right
    unless p.nil?
      if p.left == self
        p.left = a
      else
        p.right = a
      end
    end
    a.right = this
    a.root = p
    @left = c
    @root = a
    c.root = self unless c.nil?
  end
end

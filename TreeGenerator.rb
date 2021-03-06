require 'TreeNode'
require 'Tree'
def treegen (nodevalues)
  if nodevalues.nil?
    return "error"
  else
    root = TreeNode.new(:value=>nodevalues[0])
    t = Tree.new
    t.root_node = root
    nodevalues[1..-1].each do |value|
      root.insert(TreeNode.new(:value=>value))
    end
    return t
  end
end

require 'TreeNode'
def treegen (nodevalues)
  if nodevalues.nil? 
    return "error"
  else
    root = TreeNode.new(:value=>nodevalues[0])
    nodevalues[1..-1].each do |value|
      root.insert(TreeNode.new(:value=>value))
    end
    return root
  end
end
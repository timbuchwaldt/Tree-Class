require 'Tree'
require 'TreeNode'

Given /^A empty Tree$/ do
  @t = Tree.new
end

When /^inserting an element (\d+)$/ do |@el|
  @t.insert @el
end

Then /^I get a tree with only the new Element$/ do
  @t.to_a == [@el]
end

Given /^A non\-empty tree$/ do
  @t2 = Tree.new
  @t2.insert 2
end

When /^inserting another element$/ do
  @t2.insert 3
end

Then /^i get a tree with all elements$/ do
  @t2 == [2,3]
end

When /^deleting element (\d+)$/ do |arg1|
  @t2.delete(arg1)
end

Then /^i get a empty tree$/ do
  @t2.to_a == []
end

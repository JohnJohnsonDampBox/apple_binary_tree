class Tree
  attr_accessor :left, :right, :data

  def initialize(data, left = nil, right = nil)
    @left = left
    @right = right
    @data = data
  end

  def self.post_traverse(tree)
    return if tree.nil?
    post_traverse(tree.left)
    post_traverse(tree.right)
    print tree.data.to_s + ' - '
  end

  def self.pre_traverse(tree)
    return if tree.nil?
    print tree.data.to_s + ' - '
    pre_traverse(tree.left)
    pre_traverse(tree.right)
  end

  def self.in_traverse(tree)
    return if tree.nil?
    in_traverse(tree.left)
    print tree.data.to_s + ' - '
    in_traverse(tree.right)
  end
end

peter = Tree.new('Peter')
andrea = Tree.new('Andrea')
katie = Tree.new('Katie',peter,andrea)
jony = Tree.new('Jony',Tree.new('Dan'),katie)
phil = Tree.new('Phil',Tree.new('Craig'),Tree.new('Eddie'))
apple = Tree.new('Tim',jony,phil)

print "Pre_traverse: "
print Tree.pre_traverse(apple).to_s
puts " "

print "In_traverse: "
print Tree.in_traverse(apple)
puts " "

print "Post_traverse: "
print Tree.post_traverse(apple)
puts " "


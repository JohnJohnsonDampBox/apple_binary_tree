class Tree
  attr_accessor :left
  attr_accessor :right
  attr_accessor :data

  def initialize(x = nil)
    @left = nil
    @right = nil
    @data = x
  end

  def insert(x)
    if x < @data
      @left.nil? ? @left = Tree.new(x) : @left.insert(x)
    else
      @right.nil? ? @right = Tree.new(x) : @right.insert(x)
    end
  end

  def to_s
    return if self.nil?
    print data.to_s
    @left.data.to_s unless @left.nil?
    @right.data.to_s unless @right.nil?
  end
end

tree = Tree.new('Tim')
tree.insert('Jony')
tree.insert('Phil')
tree.insert('Dan')
# tree.node('Jony').insert('Dan').insert('katie')
# tree.traverse_preorder { |node| print "#{node.to_s}-"}
puts tree.left.left

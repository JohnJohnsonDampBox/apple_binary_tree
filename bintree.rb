class Tree
  attr_accessor :left, :right, :data

  def initialize(data, left = nil, right = nil)
    @left = left
    @right = right
    @data = data
  end

  def post_traverse(tree)
    return if tree.nil?
    post_traverse(tree.left)
    post_traverse(tree.right)
    print tree.data.to_s + ' - '
  end

  def pre_traverse(tree)
    return if tree.nil?
    print tree.data.to_s + ' - '
    pre_traverse(tree.left)
    pre_traverse(tree.right)
  end

  def in_traverse(tree)
    return if tree.nil?
    in_traverse(tree.left)
    print tree.data.to_s + ' - '
    in_traverse(tree.right)
  end
end

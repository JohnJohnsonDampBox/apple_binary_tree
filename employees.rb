require_relative "bintree"

peter = Tree.new('Peter')
andrea = Tree.new('Andrea')
katie = Tree.new('Katie',peter,andrea)
jony = Tree.new('Jony',Tree.new('Dan'),katie)
phil = Tree.new('Phil',Tree.new('Craig'),Tree.new('Eddie'))
apple = Tree.new('Tim',jony,phil)

print "Pre_traverse: "
print apple.pre_traverse(apple)
puts " "

print "In_traverse: "
print apple.in_traverse(apple)
puts " "

print "Post_traverse: "
print apple.post_traverse(apple)
puts " "

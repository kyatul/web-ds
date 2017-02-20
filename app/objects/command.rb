class Command
  def self.execute
    bst = Tree::BinaryTree.new([3,2,1,6,8,2,4,5])
    Tree::Traversal.inorder(bst.root)
  end
end

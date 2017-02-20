class Command
  def self.execute
    bst = Tree::BinarySearchTree.new([3,2,1])
    bst.insert_via_recursion(4)
    bst.insert_via_recursion(0)
    Tree::Traversal.inorder(bst.root)
  end
end

class Command
  def self.execute
    bst = Tree::BinarySearchTree.new([50,30,70,20,40,60,80,10,25])
    print bst.successor(50).try(:datum)
  end
end

module Tree
  class Traversal
    def self.inorder(root)
      return if root.nil?
      inorder(root.left)
      print root.datum
      inorder(root.right)
    end

    def self.preorder
      return if root.nil?
      print root.datum
      preorder(root.left)
      preorder(root.right)
    end

    def self.postorder
      return if root.nil?
      postorder(root.left)
      postorder(root.right)
      print root.datum
    end
  end
end

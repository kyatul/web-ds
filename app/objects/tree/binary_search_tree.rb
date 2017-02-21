module Tree
  class BinarySearchTree
    attr_accessor :root, :data

    def initialize(data)
      @data = data
      @root = nil
      process_data
    end

    def search(key, root = @root)
      return nil if root.nil?
      current_node = root

      while current_node != nil
        break if key == current_node.datum
        if key < current_node.datum
          current_node = current_node.left
        else
          current_node = current_node.right
        end
      end

      current_node
    end

    def search_via_recursion(key, root = @root)
      return nil if root.nil?
      return root if key == root.datum
      if key < root.datum
        search(key, root.left)
      else
        search(key, root.right)
      end
    end

    def insert(datum)
      node = Tree::Node.new(datum)
      previous_node = root
      current_node = root
      while current_node != nil
        if datum <= current_node.datum
          current_node = current_node.left
        else
          current_node = current_node.right
        end

        previous_node = current_node unless current_node.nil?
      end

      if datum < previous_node.datum
        previous_node.left = node
      else
        previous_node.right = node
      end
    end

    def insert_via_recursion(datum, current_node = @root)
      if datum <= current_node.datum
        if current_node.left.nil?
          node = Tree::Node.new(datum)
          current_node.left = node
        else
          insert_via_recursion(datum, current_node.left)
        end
      else
        if current_node.right.nil?
          node = Tree::Node.new(datum)
          current_node.right = node
        else
          insert_via_recursion(datum, current_node.right)
        end
      end
    end

    def minimum_value(root = @root)
      return nil if root.nil?
      current_node = root
      while current_node.left != nil
        current_node = current_node.left
      end
      current_node
    end

    def maximum_value(root = @root)
      return nil if root.nil?
      current_node = root
      while current_node.right != nil
        current_node = current_node.right
      end
      current_node
    end

    def predecessor(key, root = @root)
      node = search(key)
      return nil if node.nil?
      return maximum_value(node.left)
    end

    def successor(key, root = @root)
      node = search(key)
      return nil if node.nil?
      return minimum_value(node.right)
    end

    private
    def process_data
      @data.each do |datum|
        node = Tree::Node.new(datum)
        if @root.nil?
          @root = node
          next
        end

        insert(datum)
      end
    end
  end
end

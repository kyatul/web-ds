module Tree
  class BinarySearchTree
    attr_accessor :root, :data

    def initialize(data)
      @data = data
      @root = nil
      process_data
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

module Tree
  class BinaryTree
    attr_accessor :root, :data

    def initialize(data)
      @data = data
      @root = nil
      process_data
    end

    private
    def process_data
      @data.each do |datum|
        node = Tree::Node.new(datum)
        if @root.nil?
          @root = node
          next
        end

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
    end
  end
end

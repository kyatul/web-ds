module LinkedList
  class List
    attr_accessor :head

    def initialize(data)
      @data = data
      @head = nil
      process_data
    end

    def length
      @data.length
    end

    def add_node_at_begining(datum)
      node = Node.new(datum)
      node.next = @head
      @head = node
    end

    def add_node_at_end(datum)
      node = Node.new(datum)
      current_node = @head
      while current_node.next != nil
        current_node = current_node.next
      end
      current_node.next = node
    end

    private
    def process_data
      last_node = nil
      @data.each do |datum|
        node = Node.new(datum)
        last_node.nil? ? (@head = node) : (last_node.next = node)
        last_node = node
      end
    end
  end
end

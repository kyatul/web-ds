module LinkedList
  class Traversal
    def self.linear(linked_list)
      current_node = linked_list.head
      return '' if current_node.nil?
      while !current_node.nil?
        print current_node.datum.to_s + ' '
        current_node = current_node.next
      end
    end
  end
end

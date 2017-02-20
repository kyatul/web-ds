module Tree
  class Node
    attr_accessor :datum, :left, :right
    def initialize(datum)
      @datum = datum
      @left = nil
      @right = nil
    end
  end
end

class Node
  attr_accessor :datum, :next

  def initialize(datum)
    @datum = datum
    @next = nil
  end
end

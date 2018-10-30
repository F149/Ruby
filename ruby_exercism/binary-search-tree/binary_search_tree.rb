class Bst
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
  end

  def insert(value)
    direction = insert_direction(value)

    if leaf = send(direction)
      leaf.insert(value)
    else
      send("#{direction}=", Bst.new(value))
    end
  end

  def insert_direction(value)
    value <= data ? :left : :right
  end

  def each(&block)
    left.each(&block) if left
    block.call(data)
    right.each(&block) if right
  end
end

# class Bst
#   include Enumerable

#   VERSION = 1

#   attr_reader :data, :left, :right

#   def initialize(data)
#     @data = data
#   end

#   def insert(new_data)
#     if new_data <= data
#       left  ? left.insert(new_data)  : @left  = self.class.new(new_data)
#     else
#       right ? right.insert(new_data) : @right = self.class.new(new_data)
#     end
#   end

#   def each(&block)
#     return to_enum unless block_given?
#     left&.each(&block)
#     yield data
#     right&.each(&block)
#     self
#   end
# end



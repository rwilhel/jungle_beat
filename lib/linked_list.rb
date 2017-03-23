require 'pry'
require './lib/node'
class LinkedList
  attr_reader :head, :count

  def initialize(head = nil)
    @head = head
    @count = 0
  end

  def append(data)
    @count += 1
    if @head.nil?
       @head = Node.new(data)  
      return data  
    end
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(data)
    data
  end

  def to_string
    @head.data
  end

end

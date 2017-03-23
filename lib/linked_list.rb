require 'pry'
require './lib/node'
class LinkedList
  attr_reader :head

  def initialize(head = nil)
    @head = head
  end
  def append(data) 
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

  def count
    node_count = 0
    if @head != nil
      node_count += 1
    end
    node_count
  end

  def to_string
    @head.data
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(data)
    data.to_string
  end

#prepend: head, new node is next node 
end

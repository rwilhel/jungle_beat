require 'pry'
require './lib/node'
class LinkedList

  attr_accessor :head, :data

  def initialize(head = nil)
    @head = head
  end

  def append(beat) 
    if @head.nil?
       return @head = Node.new(beat)  
    end
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(beat)
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
    #navigate chain (until nil from append), 
  end


#prepend: head, new node is next node 
end

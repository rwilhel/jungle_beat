require 'pry'
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'
require './lib/linked_list.rb'

class LinkedListTest < Minitest::Test

 def test_list_exist
   list = LinkedList.new('doop')
   assert list
 end

 def test_head_works
   list = LinkedList.new(nil)
   assert_equal nil, list.head
 end

 def test_append_works
   list = LinkedList.new('doop')
   assert_equal 'doop', list.value
end

def test_next_node
 list = LinkedList.new(nil)
   assert_equal nil, list.next_node
  end


end
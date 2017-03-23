require 'pry'
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_list_exist
    list = LinkedList.new
    assert list
  end

  def test_head_is_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_append_one_element_works
    list = LinkedList.new
    list.append("doop")
    assert_equal Node, list.head.class
    assert_equal "doop", list.head.data
  end

  def test_append_multiple_elements_works
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.head.data + " " + list.head.next_node.data
  end

  def test_next_node
    list = LinkedList.new
    list.head = Node.new("")
    assert_nil list.head.next_node
  end

  def test_add_to_list_count
    list = LinkedList.new
    assert_equal 0, list.count 
  end
  
  def test_list_count_with_head
    skip
    list = LinkedList.new
    assert_equal 2, list.count
  end

  def test_list_to_string
    head = Node.new("")
    list = LinkedList.new(head)
    assert_equal "", list.to_string  
  end
end

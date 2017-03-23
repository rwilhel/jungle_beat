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
  end

  def test_append_multiple_elements_works
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
    assert_equal 1, list.count
    list.append("deep")
    assert_equal 2, list.count
    assert_equal "doop deep", list.head.data + " " + list.head.next_node.data
  end

  def test_next_node
    list = LinkedList.new
    list.append("doop")
    assert_nil list.head.next_node
    list.append("deep")
    assert_instance_of Node, list.head.next_node
  end

  def test_add_to_list_count
    list = LinkedList.new
    assert_equal 0, list.count 
    list.append("doop")
    assert_equal 1, list.count
  end
  
  def test_list_count_with_head
    list = LinkedList.new
    assert_equal 0, list.count
  end

  def test_list_to_string
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.head.data + " " + list.head.next_node.data
  end

end

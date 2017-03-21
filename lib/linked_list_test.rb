gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_create_list
    list = LinkedList.new
    assert list 
  end

  
end
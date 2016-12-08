require "./lib/node"
require "./lib/linked_list"
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test

  def test_node_creation
    node = Node.new("plop")
    assert_equal Node, node.class
    assert_equal "plop", node.data
  end

  def test_node_other_name
    node = Node.new("bob")
    assert_equal "bob", node.data
  end

  def test_next_node_nil_default
    node = Node.new("")
    assert_nil node.next_node
  end
#-------------------------------------------------
  def test_linked_list
    list = LinkedList.new
    assert_nil list.head
  end

  def test_linked_list_append
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_linked_list_contents
    list = LinkedList.new
    node = Node.new("")
LinkedList head = <Node data="doop" next_node=nil>
 list.head = < node.data list.next_node >
    assert_equal 
    assert_equal "doop", list.data
    assert_equal nil, list.next_node
  end


end

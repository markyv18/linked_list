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
    list2 = LinkedList.new
    assert_equal "doop", list.data
    assert_nil list.next_node
  end

  def test_is_next_node_nil
    list = LinkedList.new
    assert_nil list.next_node
  end

  def test_count_the_list
    list = LinkedList.new
    assert_equal 1, list.count
  end

  def test_change_list_to_string
    list = LinkedList.new
    assert_equal "doop", list.to_string
  end

  def test_append_deep
    list = LinkedList.new
    assert_equal "deep", list.append("deep")
  end

  def test_

end

# > list.head.next_node
# => <Node data="deep" next_node=nil #5678904567890>
# > list.count
# => 2
# > list.to_string
# => "doop deep"

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
  return nil if head.nil?
  return head if head.next.nil? || head.next.next.nil?

  node_odd,node_even=ListNode.new(head.val),ListNode.new(head.next.val)
  res,connect=node_odd,node_even

  head=head.next.next
  while true
    node_odd.next=ListNode.new(head.val)
    node_odd=node_odd.next
    break if (head=head.next).nil?
    node_even.next=ListNode.new(head.val)
    node_even=node_even.next
    break if (head=head.next).nil?
  end
  node_odd.next=connect
  return res
end

#design
=begin
Use two linked list to save odd and even node by turn , and use "connect" to chain the odd and even node
=end

#test case
#=begin
a=ListNode.new(1)
a1=a
a1.next=ListNode.new(2)
a1=a1.next
a1.next=ListNode.new(3)
a1=a1.next
a1.next=ListNode.new(4)
a1=a1.next
a1.next=ListNode.new(5)

p odd_even_list(a)

#=end

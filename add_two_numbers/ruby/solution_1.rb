# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    l3 = ListNode.new(0)
    do_add( l1 , l2 , l3 , 0 )
    l3
end

def do_add( l1 , l2 , l3 , carry)
    val_1 = true == (l1.nil?)? 0: l1.val
    val_2 = true == (l2.nil?)? 0: l2.val
    val = val_1 + val_2 +carry
    carry = val/10
    l3.val = val%10
    if (!l1.nil? && !l1.next.nil?) || (!l2.nil? && !l2.next.nil?) || carry!=0
        l3.next = ListNode.new(0)
        do_add( true == l1.nil?? nil : l1.next , true == l2.nil?? nil : l2.next , l3.next , carry )
    end
end

#design
=begin
Create new ListNode l3
Then add l1.val and l2.val and carry(default=0) in reccursion , if sum >=10 carry+1
If l1 or l2 has next Val or Carry = 1 , then keep going , otherwise quiting and returning l3
=end
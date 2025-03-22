# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        result = ListNode()
        curr = result

        while(list1 and list2):
            if(list2.val <= list1.val):
                curr.next = list2
                list2 = list2.next
            elif(list2.val > list1.val):
                curr.next = list1
                list1 = list1.next
            curr = curr.next
        
        if list1 :
            curr.next = list1
        else :
            curr.next = list2

        return result.next
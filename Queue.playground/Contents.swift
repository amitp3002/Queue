import UIKit

var str = "Hello, playground"


// A Queue is a FIFO data structure
// head->.....->tail
class Queue<T> {
    
    // Node class to help in implementation of Queue
    private final class Node<T> {
        var next:Node<T>?
        var value:T
        init(value:T, next:Node?) {
            self.next = next
            self.value = value
        }
    }
    
    private var head:Node<T>?
    private var tail:Node<T>?
    
    func isEmpty()->Bool {
        return (head == nil)
    }
    
    func peek()->T? {
        return head?.value
    }
    
    func enqueue(data:T) {
        let newNode = Node(value:data, next: nil)
        if tail != nil {
            tail?.next = newNode
        }
        tail = newNode
        if head == nil {
            head = newNode
        }
        
    }
    func dequeue()->T? {
        let data = head?.value
        head = head?.next
        if head == nil {
            tail = nil
        }
        return data
    }
}


// Test queue implementation is correct
let myQueue = Queue<Int>()

myQueue.enqueue(data: 4)
myQueue.enqueue(data: 6)
myQueue.enqueue(data: 8)
myQueue.enqueue(data: 10)

let empty = myQueue.isEmpty()
assert(empty == false)

let a = myQueue.dequeue()
let b = myQueue.dequeue()
let c = myQueue.dequeue()
let d = myQueue.dequeue()


let isEmpty = myQueue.isEmpty()
assert(isEmpty == true)








import Foundation

func left_side_view(_ root: Node?) -> [Int] {
    var output_arr: [Int] = []
    
    guard let root = root else { return output_arr }
    
    var queue: [Node] = []
    queue.append(root)
    
    while !queue.isEmpty {
        
        let size = queue.count
        
        for i in 0..<size {
            let current = queue.removeFirst()
            
            if i == 0 {
                output_arr.append(current.val)
            }
            
            if let left = current.left {
                queue.append(left)
            }
            
            if let right = current.right {
                queue.append(right)
            }
        }
    }
    return output_arr
    
}

//        1
//  2           3
//    5            4


let root = Node(val: 1)
let node2 = Node(val: 2)
let node3 = Node(val: 3)
let node4 = Node(val: 4)
let node5 = Node(val: 5)

//root.left = node2
//node2.right = node5

root.right = node3
node3.right = node4

print(left_side_view(root))



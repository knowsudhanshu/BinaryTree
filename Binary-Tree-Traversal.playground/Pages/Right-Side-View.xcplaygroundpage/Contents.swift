import Foundation



func right_side_view(_ root: Node?) -> [Int] {
    var output_array: [Int] = []
    
    guard let root = root else { return output_array }
    
    var queue: [Node] = []
    queue.append(root)
    
    while queue.isEmpty == false {
        let size = queue.count
        
        for i in 0..<size {
            let current = queue.removeFirst()
            if i == size - 1 {
                output_array.append(current.val)
            }
            
            if let left = current.left {
                queue.append(left)
            }
            
            if let right = current.right {
                queue.append(right)
            }
        }
    }
    return output_array
}


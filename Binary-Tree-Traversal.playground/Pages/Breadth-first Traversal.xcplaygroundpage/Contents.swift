// Breadth-first traversal
//   -> Level-order traversal

func level_order_traversal(_ root: Node?) -> [[Int]] {
    
    var traversed_output: [[Int]] = []
    
    guard let root = root else { return traversed_output }
    
    var discovered_nodes: [Node] = []

    discovered_nodes.append(root)
    
    while discovered_nodes.isEmpty == false {
        let size = discovered_nodes.count
        var current_level: [Int] = []
        for _ in 0..<size {
            
            let current = discovered_nodes.removeFirst()
            
            current_level.append(current.val)
            
            if let left = current.left {
                discovered_nodes.append(left)
            }
            
            
            if let right = current.right {
                discovered_nodes.append(right)
            }
            
        }
        traversed_output.append(current_level)
    }
    
    return traversed_output
}

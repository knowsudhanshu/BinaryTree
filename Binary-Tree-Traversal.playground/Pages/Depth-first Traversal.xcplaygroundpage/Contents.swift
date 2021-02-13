import UIKit


// ======================================================
// Binary tree traversal techniques
// -> Breadth-first traversal
//    -> level-order traversal
//
// -> Depth-first traversal
//    -> Pre-order traversal
//    -> In-order traversal
//    -> Post-order traversal
// ======================================================

// Preorder traversal
func preorder_traversal(_ node: Node?) -> [Int] {
    var outputArray: [Int] = []
    // Root -> Left -> Right
//           (1)
//         /     \
//     (2)         (3)
//     /  \        /  \
// (4)     (5)  (6)    (7)
    guard let node = node else { return outputArray }
    print(node.val)
    outputArray.append(node.val)
    
    outputArray.append(contentsOf: preorder_traversal(node.left))
    
    outputArray.append(contentsOf: preorder_traversal(node.right))
    
    return outputArray
}

// Postorder traversal
func postorder_traversal(_ node: Node?) -> [Int] {
    // Left -> Right -> Root
    var outputArray: [Int] = []
    
    guard let node = node else { return outputArray }
    
    outputArray.append(contentsOf: postorder_traversal(node.left))
    
    outputArray.append(contentsOf: postorder_traversal(node.right))
    
    outputArray.append(node.val)
    
    print(node.val)
    
    return outputArray
}

// Inorder traversal
func inorder_traversal(_ node: Node?) -> [Int] {
    // Left -> Root -> Right
    var outputArray: [Int] = []
    
    guard let node = node else { return outputArray }
    
    outputArray.append(contentsOf: postorder_traversal(node.left))

    outputArray.append(node.val)
    
    outputArray.append(contentsOf: postorder_traversal(node.right))
    
    print(node.val)
    
    return outputArray
}


let root = Node(val: 1)

let left1 = Node(val: 2)
let right1 = Node(val: 3)

let left2 = Node(val: 4)
let right2 = Node(val: 5)

let left3 = Node(val: 6)
let right3 = Node(val: 7)

root.left = left1
root.right = right1

//left1.left = left2
left1.right = right2

right1.left = left3
right1.right = right3

print(preorder_traversal(root))











/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

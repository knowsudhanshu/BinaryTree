
public class Node {
    public let val: Int
    public var left: Node?
    public var right: Node?
    
    public init(val: Int, left: Node? = nil, right: Node? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
}



let vertices = ["A", "B", "C", "D"]
let edges = [
    (5,  "A", "B"),
    (1,  "A", "C"),
    (10, "A", "D"),
    (5,  "B", "A"),
    (3,  "B", "D"),
    (1,  "C", "A"),
    (8,  "C", "D"),
    (10, "D", "A"),
    (3,  "D", "B"),
    (8,  "D", "C"),
]

typealias edge = (Int, String, String)
 
func kruskal(vertices: [String], edges: [edge]) -> [edge] {
    var mst: [edge] = []
    
    var edges = edges.sorted { $0.0 < $1.0 }
    var rank: [String: Int] = [:]
    var parent: [String: String] = [:]
    
    for vertice in vertices {
        rank.updateValue(0, forKey: vertice)
        parent.updateValue(vertice, forKey: vertice)
    }
    
    func find(_ node: String) -> String {
        if node != parent[node]! {               // 루트 노드 찾아야만 재귀 탈출
            parent[node] = find(parent[node]!)
        }
        return parent[node]!
    }
    
    func union(_ nodeV: String, _ nodeU: String) {
        let rankV = find(nodeV)
        let rankU = find(nodeU)
        
        if rankV > rankU {
            parent[rankU] = rankV
        } else {
            parent[nodeV] = nodeU
            if rankV == rankU {
                rank[nodeU]! += 1
            }
        }
    }
    
    while mst.count < (vertices.count - 1) {
        let node = edges.removeFirst()
        if find(node.1) != find(node.2) {
            union(node.1, node.2)
            mst.append(node)
        }
    }
    return mst
}

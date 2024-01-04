import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var mc: Int = 0
    var ml: Int = 0
    for s in sizes {
        let a: Int = s[0] >= s[1] ? s[0] : s[1]
        let b: Int = s[0] < s[1] ? s[0] : s[1]
        mc = a > mc ? a : mc
        ml = b > ml ? b : ml
    }
    return ml * mc
}
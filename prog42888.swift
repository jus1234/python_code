import Foundation

func solution(_ record:[String]) -> [String] {
    var idDict: Dictionary<String, String> = [:]
    let commendDict: Dictionary<String, String> = ["Enter" : "들어왔습니다.", "Leave" : "나갔습니다."]
    var res: [String] = []
    for comm in record {
        let com: [String] = comm.split(separator: " ").map { String($0) }
        if com[0] != "Leave" { idDict[com[1]] = com[2] }
        
    }
    for comm in record {
        let com: [String] = comm.split(separator: " ").map { String($0) }
        if com[0] != "Change" {
            res.append("\(idDict[com[1]]!)님이 \(commendDict[com[0]]!)")
        }
    }
    return res
}
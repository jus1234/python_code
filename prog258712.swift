import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    var friendsDic: Dictionary<String, Dictionary<String, Int>> = [:]
    var giveGiftDic: Dictionary<String, Int> = [:]
    var givenGiftDic: Dictionary<String, Int> = [:]
    var giveFriendsDic: Dictionary<String, Array<String>> = [:]
    var result: Int = 0
    
    for friend in friends {
        friendsDic[friend] = [:]
        giveGiftDic[friend] = 0
        givenGiftDic[friend] = 0
        giveFriendsDic[friend] = []
    }
    
    for gift in gifts {
        let fromTo = gift.split(separator: " ").map { String($0) }
        let from: String = fromTo[0]
        let to: String = fromTo[1]
        if let count: Int = friendsDic[from]![to] {
            friendsDic[from]![to] = count + 1
        } else {
            friendsDic[from]![to] = 0
        }
        giveGiftDic[from]! += 1
        givenGiftDic[to]! += 1
        giveFriendsDic[from]!.append(to)
    }
    
    for (friend, giftDic) in friendsDic {
        var nowGifts: Int = 0
        for (to, count) in giftDic {
            let fromGiftCount: Int = friendsDic[friend]![to]!
            guard let toGiftCount: Int = friendsDic[to]![friend] else {
                nowGifts += 1
                continue
            }
            if fromGiftCount > toGiftCount {
                nowGifts += 1
                continue
            }
            if fromGiftCount == toGiftCount {
                let fromGiftScore = giveGiftDic[friend]! - givenGiftDic[friend]!
                let toGiftScore = giveGiftDic[to]! - givenGiftDic[to]!
                if fromGiftScore > toGiftScore {
                    nowGifts += 1
                }
            }
        }
        
        for f in friends {
            if !giveFriendsDic[friend]!.contains(f) && !giveFriendsDic[f]!.contains(friend) && f != friend {
                let friendGiftScore = giveGiftDic[friend]! - givenGiftDic[friend]!
                let fGiftScore = giveGiftDic[f]! - givenGiftDic[f]!
                if friendGiftScore > fGiftScore {
                    nowGifts += 1
                }
            }
        }
        
        if nowGifts > result {
            result = nowGifts
        }
    }

    return result
}
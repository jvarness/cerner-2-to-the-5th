// cerner_2^5_2017
// 2^5 levels of Pascal's Triangle
func pascal(levels : Int) -> [Int] {
    if(levels == 1) {
        return [1]
    }
    let previousLevel = pascal(levels: levels - 1)
    print(previousLevel)
    var nextLevel = [1,1]
    if(previousLevel.count >= 2) {
        for x in 1...previousLevel.count - 1 {
            nextLevel.insert(previousLevel[x - 1] + previousLevel[x], at: x)
        }
    }
    return nextLevel
}
print(pascal(levels: 32))

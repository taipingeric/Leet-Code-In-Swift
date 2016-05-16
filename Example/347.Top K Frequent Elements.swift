class Solution {
    func topKFrequent(nums: [Int], _ k: Int) -> [Int] {
        var dic: [Int: Int] = [:]
        nums.forEach { number in
            if var count = dic[number] {
                count += 1
                dic[number] = count
            }else {
                dic[number] = 0
            }
        }
        var output: [(index: Int, count: Int)] = []
        dic.forEach { (key, value) in
            output.append((index: key, count: value))
        }
        output.sortInPlace {
            return $0.count > $1.count
        }

        var final: [Int] = []
        for i in 0...k - 1 {
            final.append(output[i].index)
        }
        return final
    }
}

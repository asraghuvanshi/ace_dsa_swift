class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        print(nums, target)

        var targetDict = [Int: Int]()

        for i in 0..<nums.count {
            if let index = targetDict[target - nums[i]] {
                return [i, index]
            }
            targetDict[nums[i]] = i
        }
        return [0]
    }
}
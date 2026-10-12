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

        func findMaxK(_ nums: [Int]) -> Int {
        var uniqueValues = [Int:Int]()

        for i in nums {
            uniqueValues[i] = i
        }

        var largestNumber = -1
        for num in uniqueValues.values {
            if num > 0 && uniqueValues[-num] != nil && num > largestNumber {
                largestNumber = num
            }
        }
        return largestNumber
    }
}

let nums = [-1,2,-3,3, 10, -10]
let solutions = Solution().findMaxK(nums)
print(solutions)
class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
       var subArrayElement = [Int:String]()
        var subarrayCount = 0 
        for i in 0..<nums.count {
            var sum = 0 
            for j in i..<nums.count {
                sum = sum + nums[j]
                if sum == k {
                    subarrayCount += 1
                  
                    var subarray = ""

                    for index in i...j {
                        if !subarray.isEmpty {
                            subarray += ", "
                        }
                        subarray += "\(nums[index])"
                    }

                    subArrayElement[subarrayCount] = "[\(subarray)]"

                }
            }
        }

        print(subArrayElement)
        return subarrayCount
    }

    func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
        print(nums, k)

        var prefixDict:[Int:Int] = [0: -1]
        var prefixSum = 0

        for i in 0..<nums.count {
            prefixSum += nums[i]
            var remainder: Int = 0
            remainder = ((prefixSum % k) + k ) % k
            if let previousIndex = prefixDict[remainder] {
                if i - previousIndex >= 2 {
                    return true
                }
            } else {
                prefixDict[remainder] = i
            }
        }
        return false
    }

    // time limit issue
      func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
        var subarrayCount = 0 
        for i in 0..<nums.count {
            var sum = 0 
            for j in i..<nums.count {
                sum = sum + nums[j]
                if sum % k == 0{
                    subarrayCount += 1
                }
            }
        }
        return subarrayCount
    }

        func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
        print(nums, k)

        var prefixDict:[Int:Int] = [0: -1]
        var prefixSum = 0

        for i in 0..<nums.count {
            prefixSum += nums[i]
            var remainder: Int = 0
            remainder = ((prefixSum % k) + k ) % k
            if let previousIndex = prefixDict[remainder] {
                if i - previousIndex >= 2 {
                    return true
                }
            } else {
                prefixDict[remainder] = i
            }
        }
        return false
    }
}

let nums = [1,2,3,4,5,5]
let target = 5

let sol = Solution().subarraySum(nums, target)
print(sol)
class ArrayManipulation {
    func findLargestNumber(arr: [Int]) -> Int {
        var largestNumber = arr[0]

        for i in 1..<arr.count  {
            if largestNumber < arr[i] {
                largestNumber = arr[i]
            }
            print("largest \(largestNumber)")
        }

        return largestNumber
    }

  func findSecondLargest(arr: [Int]) -> Int {
    var largest = arr[0]

    for num in arr {
        if num > largest {
            largest = num
        }
    }

    var secondLargest = arr[0]
    for num in arr {
        if num > secondLargest && num < largest {
            secondLargest = num
        }
    }

    return secondLargest
}
}

let solution = ArrayManipulation() 
let largestNumber = solution.findLargestNumber(arr: [1,5,6,7,8,9,3,49,0])
let secondLargestNumber = solution.findSecondLargest(arr: [1,5,6,7,8,9,3])
print("Largest number is: \(largestNumber)")

print("Second Largest number is: \(secondLargestNumber)")

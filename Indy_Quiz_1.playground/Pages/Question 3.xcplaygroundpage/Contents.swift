import Foundation

// You are given an array of integers A in the range [-1000...1000].
// You are given a sum P in the range [-100000...100000].

// Find all distinct subsets of A which have a sum of P.

// Example
// A = [1, 1, 1, 2]
// P = 3
//
// Results = [[1, 1, 1], [1, 2]]
//
// Explanation: 1 + 1 + 1 = 3 and 1 + 2 = 3, we cannot use 1 + 2 = 3
// twice, because we are only looking for distinct answers.

func allSubsets(from array: [Int], withSumOf target: Int) -> [[Int]] {
    []
}

let test_1_a = [1, 1, 1, 2]
let test_1_p = 3
let test_1_result = allSubsets(from: test_1_a,
                               withSumOf: test_1_p)
print("Test 1 A: \(test_1_a) P: \(test_1_p)")
print("Test 1 Result: \(test_1_result)")
print("Test 1 Expected: \([[1, 1, 1], [1, 2]])")
print("========")

let test_2_a = [0, 1, 2]
let test_2_p = 3
let test_2_result = allSubsets(from: test_2_a,
                               withSumOf: test_2_p)
print("Test 2 A: \(test_2_a) P: \(test_2_p)")
print("Test 2 Result: \(test_2_result)")
print("Test 2 Expected: \([[0, 1, 2], [1, 2]])")
print("========")

let test_3_a = [1, -1, 1, 3, 2]
let test_3_p = 3
let test_3_result = allSubsets(from: test_3_a,
                               withSumOf: test_3_p)
print("Test 3 A: \(test_3_a) P: \(test_3_p)")
print("Test 3 Result: \(test_3_result)")
print("Test 3 Expected: \([[-1, 1, 1, 2], [-1, 1, 3], [1, 2], [3]])")
print("========")

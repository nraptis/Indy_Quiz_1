import Foundation

// NOTE: There are 3 pages in this playground.
// There are a total of 3 questions, each on a separate page.

// You are given an array of integers A in the range [-10...10].
// Find the sum of all distinct integers from the array.

// Example
// Input = [1, 1, 2]
//
// Result = 3
//
// Explanation: The distinct elements from input are 1 and 2.
// The sum of the distinct elements is 3.

func sumOfDistinctNumbers(from input: [Int]) -> Int {
    0
}

let test_1_input = [1, 2]
let test_1_result = sumOfDistinctNumbers(from: test_1_input)
print("Test 1 Input: \(test_1_input)")
print("Test 1 Result: \(test_1_result)")
print("Test 1 Expected: \(3)")
print("========")

let test_2_input = [1, 1, 2]
let test_2_result = sumOfDistinctNumbers(from: test_2_input)
print("Test 2 Input: \(test_2_input)")
print("Test 2 Result: \(test_2_result)")
print("Test 2 Expected: \(3)")
print("========")

let test_3_input = [-1, 1, -1, 3, -1, 3, 1]
let test_3_result = sumOfDistinctNumbers(from: test_3_input)
print("Test 3 Input: \(test_3_input)")
print("Test 3 Result: \(test_3_result)")
print("Test 3 Expected: \(3)")
print("========")

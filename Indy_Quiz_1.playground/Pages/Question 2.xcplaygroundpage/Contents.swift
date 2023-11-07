import Foundation

// You are given an array of Item, input.
// Each element from input could be one of two things.
//   a.) An integer
//   b.) An array of Item
//
// Item is representes as the enum below.
//
// Convert input into a flat (1D) array of integers.

// Example
// Input = [1, [2, 3], 4]
//
// Result = [1, 2, 3, 4]
//
// Explanation: The nested array is flattened and
// combined into the result array, which is 1D.

enum Item {
    case array([Item])
    case value(Int)
}

func flatten(input: [Item]) -> [Int] {
    []
}

//[1, [2, 3], 4]
let test_1_input: [Item] = [
    .value(1),
    .array([
        .value(2),
        .value(3)]),
    .value(4)
]
let test_1_result = flatten(input: test_1_input)
print("Test 1 Input: \(test_1_input)")
print("Test 1 Result: \(test_1_result)")
print("Test 1 Expected: \([1, 2, 3, 4])")
print("========")


//[[[[0]]]]
let test_2_input: [Item] = [
    .array([
        .array([
            .array([
                .value(0)
            ])
        ])
    ])
]
let test_2_result = flatten(input: test_2_input)
print("Test 2 Input: \(test_2_input)")
print("Test 2 Result: \(test_2_result)")
print("Test 2 Expected: \([0])")
print("========")

let test_3_input: [Item] = [
    .value(1),
    .value(2),
    .array([
        .value(3),
        .value(4),
        .array([
            .value(5),
            .array([
                .array([]),
                .value(6),
                .array([
                    .value(7),
                    .value(8)
                ])
            ]),
            .value(9),
            .array([
                .value(10),
                .array([
                    .value(11),
                    .value(12)
                ]),
                .value(13)
            ])
        ]),
        .array([
            .value(14)
        ]),
        .array([
            .value(15),
            .value(16),
            .value(17)
        ])
    ])
]
//[1, 2, [3, 4, [5, [[], 6, [7, 8]], 9, [10, [11, 12], 13]], [14], [15, 16, 17]]]
let test_3_result = flatten(input: test_3_input)
print("Test 3 Input: \(test_3_input)")
print("Test 3 Result: \(test_3_result)")
print("Test 3 Expected: \([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17])")
print("========")

//For debugging only
extension Item: CustomStringConvertible {
    var description: String {
        var result = ""
        switch self {
        case .value(let value):
            result.append("\(value)")
        case .array(let array):
            result.append("\(array)")
        }
        return result
    }
}


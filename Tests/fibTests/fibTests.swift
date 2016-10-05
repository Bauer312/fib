import XCTest
@testable import fib

class fibTests: XCTestCase {
    func testValueOne() {
      XCTAssertEqual(fibonacciValue(1), 1)
    }
    func testValueTwo() {
      XCTAssertEqual(fibonacciValue(2), 1)
    }
    func testValueTen() {
      XCTAssertEqual(fibonacciValue(10), 55)
    }

    func testSeqCountNeg() {
      XCTAssertEqual(fibonacciSequence(count: -1), [Int]())
    }
    func testSeqCountZero() {
      XCTAssertEqual(fibonacciSequence(count: 0), [Int]())
    }
    func testSeqCountOne() {
      XCTAssertEqual(fibonacciSequence(count: 1), [1])
    }
    func testSeqCountTwo() {
      XCTAssertEqual(fibonacciSequence(count: 2), [1,1])
    }
    func testSeqCountThree() {
      XCTAssertEqual(fibonacciSequence(count: 3), [1,1,2])
    }
    func testSeqCountTen() {
      XCTAssertEqual(fibonacciSequence(count: 10), [1,1,2,3,5,8,13,21,34,55])
    }

    func testSeqMaxNeg() {
      XCTAssertEqual(fibonacciSequence(maximum: -1), [Int]())
    }
    func testSeqMaxZero() {
      XCTAssertEqual(fibonacciSequence(maximum: 0), [Int]())
    }
    func testSeqMaxOne() {
      XCTAssertEqual(fibonacciSequence(maximum: 1), [1,1])
    }
    func testSeqMaxTwo() {
      XCTAssertEqual(fibonacciSequence(maximum: 2), [1,1,2])
    }
    func testSeqMaxThree() {
      XCTAssertEqual(fibonacciSequence(maximum: 3), [1,1,2,3])
    }
    func testSeqMaxTen() {
      XCTAssertEqual(fibonacciSequence(maximum: 10), [1,1,2,3,5,8])
    }


    static var allTests : [(String, (fibTests) -> () throws -> Void)] {
        return [
            ("testValueOne", testValueOne),
            ("testValueTwo", testValueTwo),
            ("testValueTen", testValueTen),

            ("testSeqCountNeg", testSeqCountNeg),
            ("testSeqCountZero", testSeqCountZero),
            ("testSeqCountOne", testSeqCountOne),
            ("testSeqCountTwo", testSeqCountTwo),
            ("testSeqCountThree", testSeqCountThree),
            ("testSeqCountTen", testSeqCountTen),

            ("testSeqMaxNeg", testSeqMaxNeg),
            ("testSeqMaxZero", testSeqMaxZero),
            ("testSeqMaxOne", testSeqMaxOne),
            ("testSeqMaxTwo", testSeqMaxTwo),
            ("testSeqMaxThree", testSeqMaxThree),
            ("testSeqMaxTen", testSeqMaxTen),
        ]
    }
}

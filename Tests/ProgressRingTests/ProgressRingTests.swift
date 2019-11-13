import XCTest
@testable import ProgressRing

final class ProgressRingTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ProgressRing().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

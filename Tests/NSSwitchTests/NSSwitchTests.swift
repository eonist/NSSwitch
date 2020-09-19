import XCTest
@testable import NSSwitch

final class NSSwitchTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(NSSwitch().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

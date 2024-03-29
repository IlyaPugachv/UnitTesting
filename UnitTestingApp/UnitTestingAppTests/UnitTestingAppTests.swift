import XCTest
@testable import UnitTestingApp

final class UnitTestingAppTests: XCTestCase {
    
    var sut: DataModel!

    override func setUp() {
        super.setUp()
        sut = DataModel()
    }
    
    func testAddition() {
        let numberOne = 10
        let numberTwo = 20

        let result = sut.addition(numberOne, numberTwo)
        
        XCTAssertEqual(result, 30, "Sum should be 30")
    }
}

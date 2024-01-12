import XCTest
@testable import UnitTestingApp

final class UnitTestingMultiplication: XCTestCase {
    
    var sut: DataModel!

    override func setUp() {
        super.setUp()
        sut = DataModel()
    }
    
    func testAddition() {
        let numberOne = 10
        let numberTwo = 20

        let result = sut.multiplication(numberOne, numberTwo)
        
        XCTAssertEqual(result, 200, "Multiplication should be 200")
    }
}

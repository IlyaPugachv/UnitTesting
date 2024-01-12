import XCTest
@testable import UnitTestingApp

final class UnitTestingDivision: XCTestCase {
    
    var sut: DataModel!

    override func setUp() {
        super.setUp()
        sut = DataModel()
    }
    
    func testDivision() {
        let numberOne = 20
        let numberTwo = 10

        var result: Int

        do {
            result = try sut.division(numberOne, numberTwo)
            print("Результат деления: \(result)")
        } catch DivisionError.divisionByZero {
            print("Ошибка: Деление на ноль!")
            return
        } catch {
            print("Произошла неожиданная ошибка: \(error)")
            return
        }

        XCTAssertEqual(result, 2, "Division should be 2")
    }
}

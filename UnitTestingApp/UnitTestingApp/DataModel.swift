import Foundation

enum DivisionError: Error {
    case divisionByZero
}

struct DataModel {
    
    func addition(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func multiplication(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    func division(_ a: Int, _ b: Int) throws -> Int {
        guard b != 0 else {
            throw DivisionError.divisionByZero
        }
        return a / b
    }
}

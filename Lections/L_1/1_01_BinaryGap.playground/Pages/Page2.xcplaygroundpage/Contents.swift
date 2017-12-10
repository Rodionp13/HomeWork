//: [Previous](@previous)
/*: Задание
 # Binary Gap
 Дано: число типа Int
 Найти: длину наибольшей последовательности нулей ограниченных единицами в двоичном представлении числа.
 
 примеры:
 - Число 9 имеет следующее двоичное представление 1001. Результат - 2.
 - Число 20 в двоичной записи 10100. Результат - 1, поскольку вторая последовательность нулей не ограничена единицами с двух сторон
 */
import Foundation
import XCTest

public func solution(for number: Int) -> Int {
    let binaryNumber = String(number, radix: 2)
    var nowGap = 0
    var maxGap = 0
    for digit in binaryNumber {
        if digit == "0" {
            nowGap += 1
        }
        else {
            if nowGap > maxGap {
                maxGap = nowGap
            }
            nowGap = 0
        }
        
    }
    return maxGap
}

/*:
 Данный метод тестирует результаты работы `func solution(for number: Int) -> Int`.
 Входные данные и ожидаемые результаты передаются в виде массива `let testValues = [(9,2), (20,1), (0,0)]`.
 
 Допишите еще несколько проверок для граничных значений входных данных
 */
class SolutionTests: XCTestCase {
    let testValues = [(9,2), (20,1), (112,2)]
    
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func testSolution() {
        for test in testValues {
            XCTAssertEqual(solution(for: test.0), test.1)
        }
    }
}

SolutionTests.defaultTestSuite.run()

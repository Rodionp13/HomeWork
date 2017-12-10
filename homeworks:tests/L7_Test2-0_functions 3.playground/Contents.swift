/*:
 1.
 - Объявите функцию Test, которая печатет в консоль строку "Test functions, task 1 passed"
 */
func test() -> String {
    return "Test functions, task 1 passed"
}
/*:
 2.
 - Объявите функцию Test, которая принимает один аргумент challenge типа Int
 - функция должна печатать в консоль строку "Test functions, task N passed", где N -- значение аргумента
 - Прмер если challenge = 2 функция выведет в консоль "Test functions, task 2 passed"
 */
func test(_ challange: Int) -> String {
    return "Test functions, task \(challange) passed"
}
/*:
 3.
 - Вызовите функции из задания 1 и 2
 */
//print(test())
//print(test(2))
/*:
 4.
 - Объявите функцию checkMinMax, которая принимает 2 именованых аргумента типа Double min и max и возвращает true если min < max
 */
func minMax(minValue min: Double,maxValue max: Double) -> Bool {
    return min < max
}
/*:
 5.
 - Объявите функцию meanValue, которая принимает 2 неименованых аргумента типа Double и возвращает их среднее значение
 */
func meanValue(_ first: Double, _ second: Double) -> Double {
    return (first + second)/2
}
/*:
 6.
 - Объявите функцию meanValue, которая принимает 1 аргумент типа [Int] и возвращает среднее значение всех элементов массива
 */
func meanValue(array: [Int]) -> Int {
    var sum = 0, average = 0
    for i in array {
        sum += i
        average = sum / array.count
    }
    return average
}
print(meanValue(array: [20,30]))
/*:
 7.
 - Объявите функцию validPerson, которая принимает на вход имя, фамилию, возраст человека и возвращает строку "FirstName LastName, возраст N лет"
 - При этом имя и фамилия должны быть длинее 1 символа, а возраст от 0 до 200 лет. Иначе выводится nil
 - Напечатайте в консоль результат работы функции для. Ю Сянь, которому 20 лет и Иванова Сергея, которому 34 года 
 */
func validPerson(firstName: String, lastName: String, age: Int) -> String {
    if firstName.characters.count > 1 && lastName.characters.count > 1 {
        if age <= 200 && age > 0 {
            print("\(firstName) \(lastName), \(age)")
        }
    } else {
        print("nil")
    }
    return "\(firstName) \(lastName), \(age)"
}
validPerson(firstName: "Ю", lastName: "Сянь", age: 20)
validPerson(firstName: "Иванов", lastName: "Сергей", age: 34)
/*:
 8.
 - Объявите функцию createColor(string:, defaultColor:) которая преобразует строку в цвет, если название строки совпадает с цветом, который есть в enum Colors. если же такого цвета нет, то возвращается defaultColor nbgf Colors. При этом defaultColor имеет значение по умолчанию равное Colors.black
*/

enum Colors: String {
    case red
    case black
    case green
}

func creatColor(string: String, defaultColor: Colors = .black) -> String {
    if string == "red" {
        return Colors.red.rawValue
        if string == "black" {
            print(Colors.black.rawValue)
            if string == "green" {
                print(Colors.green.rawValue)
            }
        }
    } else {
        print(defaultColor.rawValue)
}
    return string
}
creatColor(string: "")
// Это то, что я написал со старта...
// Если можно, не могли бы вы объяснить строчку из кода:  Colors(rawValue: string). Т.е мы присваиваем константе color  константу string(преобразованную в тип Color) ???
/*
enum Colors: String {
    case red
    case black
    case green
}

func createColor(string: String, defaultColor: Colors = .black ) -> Colors {
    if let color = Colors(rawValue: string) {
        return color
    }
    return defaultColor
}
print(createColor(string: ""))
*/







/*:
 1.
 - Объявите одну константу x типа Int
 - Объявите переменную y типа Double
 - Объявите  Optional переменную sum типа Int без начального значения
 - Присвойте sum значение равное сумме x и y
 */
let x: Int = 5
var y: Double = 0.2534
var sum: Int? = x + Int(y)
/*:
 2. Выведите в консоль строку "x + y =  sum" где sum будет заменено на значение
 */
if let sum = sum {
    print("x + y = \(sum)")
}

/*:
 3. Объявите константу isOdd типа Bool, которая будет показывать, что число sum нечетное
 В swift есть опертор отстатка от деления `%`. Смотри ка он работает на следующих двух строках
 */
let isOdd: Bool
if let sum = sum {
    if sum % 2 == 1 {
        isOdd = true
    } else {
        isOdd = false
    }
}

/*:
 4. Объявите новый тип EvenOdd, который будет иметь два возможных значения. Число четное или число нечетное.
 */
enum EvenOdd {
    case even
    case odd
}
/*:
 5. Объявите функцию, которая получет на вход 1 параметр типа Int и возвращает результат типа EvenOdd
 */
func evenOrOdd(_ number: Int) -> EvenOdd {
    if number % 2 == 0 {
        return EvenOdd.even
    } else {
        return EvenOdd.odd
    }
}
/*:
 6. Выведите в консоль результат работы вашей функции для summ
 */
print(evenOrOdd(0))
/*:
 7. Напишите функцию, которая получает на вход Имя и Фамилию человека и возвращает tuple (String, String) с именем и фамилией
 */
func personsData(firstName: String, secondName: String) -> (String, String) {
    return (firstName, secondName)
}
print(personsData(firstName: "Rodion", secondName: "Ygrinovich"))
/*:
 8. Напишите функцию, которая получает на вход массив [String?] и возвращает массив [String], в котором выброшены все nil значения из первого массива
 
 Например из массива
 ["a", nil, "b"] получится массив ["a", "b"]
 */
func checkForArray(arrWithNils: [String?]) -> [String] {
    var arrWithoutNils = [String]()
    for elements in arrWithNils[0..<arrWithNils.count] {
        if arrWithNils[elements]  != nil {
            arrWithoutNils.append(elements)
        }
    }
    return arrWithoutNils
}











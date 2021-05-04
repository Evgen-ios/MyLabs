/*:
 ## Упражнение - приведение типов и их контроль
 
 Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
 */
let collect:[Any] = [43, 7, "Stroka", 6.8, 6, 7.87]
print(collect)

/*:
 Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
 */
//for index in collect {
//    if index is Int {
//        print("Целое число")
//    } else if index is String {
//        print("Тип Строка")
//    } else if index is Double {
//        print("Type Double")
//    } else {
//        print("Не известный тип")
//    }
//}


/*:
 Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите пары ключ/значения для всех элементов коллекции.
 */
let dictonary: [String : Any] = ["Возраст":43, "weak":7, "String":"Stroka", "Double":6.8, "Time":6, "Double Type":7.87, "Buleva": true,]
//for index in dictonaryCollect {
//    print(index)
//}
/*:
 Создайте переменную `total` типа `Double`, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`.  Напечатайте значение `total`.
 */

var total: Double = 0


for index in dictonary {
    if let int = index.value as? Int {
        total + Double(int)
    } else if let double = index.value as? Double {
        total + double
    } else if index.value is String {
        total + 1
    } else if let boolev = index.value as? Bool {
        if boolev {
            total + 2
        } else {
            total - 3
        }
    } else {
        print("Неизвестный тип")
    }
}
print(total)

/*:
 Создайте переменную `total2` типа `Double`, и установите её равной 0.  Снова пройдите по всей коллекции, складывая все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */
var total2: Double = 0

for _ in dictonary {
    
}
//: страница 1 из 2  |  [Далее: упражнение для приложения - типы тренировок](@next)

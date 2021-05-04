/*:
 ## Упражнение - словари
 
 Создайте переменную типа словарь `[String: Int]`, которая будет содержать количество дней в каждом из месяцев.  Используя литералы, инициализируйте её значениями января, февраля и марта.  В январе 31 день, в феврале 28, в марте — 31.  Выведите содержимое словаря в консоль.
 */
var dictionary: [String: Int] = ["январь": 32,
                                 "февраль":28,
                                 "март":31,
                                 "май":31,
                                 "июнь":30,
                                 "июль":31,
                                 "август":31,
                                 "сентябрь":30,
                                 "октябрь":31,
                                 "ноябрь":30,
                                 "декабрь":31]

print(dictionary)
/*:
 Используя индексацию, добавьте в коллекцию апрель со значением 30.  Выведите содержимое словаря в консоль.
 */
if let oldValue = dictionary.updateValue(30, forKey: "Апрель"){
    print(dictionary)
    print(oldValue)
} else {
    print(dictionary)
}

/*:
 Наступил високосный год.  Сделайте количество дней в феврале равным 29 с помощью метода `updateValue(_:, forKey:)`.  Выведите содержимое словаря в консоль.
 */
if let oldValue = dictionary.updateValue(31, forKey: "Апрель") {
    print(dictionary)
    print(oldValue)
}
/*:
 С помощью if-let получите количество дней для ключа "январь".  Если словарь содержит данные, выведите "Количество дней в январе: 31", где 31 — это значение, полученное из словаря.
 */
if let janvary = dictionary.updateValue(31, forKey: "январь") {
    print(janvary)
    print(dictionary)
}

/*:
 Заданы следующие массивы.  Создайте новый словарь [String : [String]].  `shapesArray` должен использовать ключ "формы", а `colorsArray` — ключ "цвета".    Выведите содержимое получившегося словаря.
 */
let shapesArray = ["круг", "квадрат", "треугольник"]
let colorsArray = ["красный", "зелёный", "синий"]

var newArray: [String : [String]] = [:]

newArray.updateValue(colorsArray, forKey: shapesArray[0])

print(newArray)
print(newArray)


/*:
 Выведите последний элемент `colorsArray`, получив его с помощью созданного вами словаря.  Вам нужно использовать if-let, либо оператор с восклицательным знаком, чтобы использовать значение, возвращённое из словаря, до того, как вы сможете получить доступ к элементу массива.
 */


//: [Ранее](@previous)  |  страница 3 из 4  |  [Далее: Упражнение для приложения - темп](@next)
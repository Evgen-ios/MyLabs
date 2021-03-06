/*:
 ## Упражнения - циклы For-In
 
 Создайте цикл for-in, выводящий в консоль числа от 1 до 100.
 */
for index in 1...100 {
    print(index)
}

/*:
 Создайте цикл for-in, проходящий по всем символам в строке `alphabet`.  Выведите в консоль каждый символ, а также его индекс в строке.
 */
let alphabet = "АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ"
for (index, chapter) in alphabet.enumerated() {
    print("Индекс: \(index) \(chapter)")
}

/*:
 Создайте словарь типа `[String: String]`, где ключами будут названия стран, а значениями — названия их столиц.  Включите в коллекцию, как минимум, три пары ключ/значение.  Затем примените цикл for-in, чтобы пройти по парам и вывести в консоль ключи и значения словаря.
 */
var collection: [String: String] = ["Россия":"Москва","Германия":"Берлин","США":"НьюЮрк"]
for index in collection {
    print(index.key, index.value)
}

//: страница 1 из 6  |  [Далее: Упражнение для приложения - виды спорта](@next)

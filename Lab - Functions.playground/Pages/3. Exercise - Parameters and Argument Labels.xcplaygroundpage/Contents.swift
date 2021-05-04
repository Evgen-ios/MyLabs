/*:
 ## Упражнение — Параметры и метки аргументов
 
 Напишите новую функцию `introduction`.  Она должна получать два строковых параметра типа `String`, под метками `name` (имя) и `home` (родной город), и один целочисленный параметр типа `Int`, `age` (возраст).  Функция должна вывести короткую информацию.  Например, если функции передать "Настя" "Суиндон, графство Уилтшир" и 17, она может напечатать «Настя, 17 лет, место рождения: Суиндон, графство Уилтшир».  Вызовите функцию несколько раз и зафиксируйте результаты.
 */
func introduction(name: String, home: String, age: Int){
    print("\(name), \(age) год, место рождения: \(home)")
}

introduction(name: "Александр", home: "Иркутск, Графство Гончаровых", age: Int(1))
/*:
 Напишите функцию `almostAddition`, которая принимает два аргумента `Int`.  Первый аргумент не должен требовать метки.  Функция должна сложить оба аргумента, вычесть 2, затем вывести результат.  Вызовите функцию с разными параметрами и зафиксируйте результаты.
 */
func almostAddition(one: Int = 2, two: Int) {
    print("Результат: ",(one + two) - 2)
}

almostAddition(one: 3, two: 10)
almostAddition(two: 5)

/*:
 Напишите функцию `multiply`, принимающую два аргумента `Double`.  Функция должна перемножить два аргумента и напечатать результат.  Первый аргумент не должен требовать метки, а второй аргумент должен иметь внешнюю метку, «by», которая будет отличаться от внутреннего названия переменной.  Вызовите функцию и зафиксируйте результаты её работы.
 */
func multiply(one: Double = 10, by two: Double) {
    print(one * two)
}

multiply(one: 12, by: 10)
multiply(by: 30)
//: [Ранее](@previous)  |  страница 3 из 6  |  [Далее: Упражнение для приложения — информирование об успехах](@next)
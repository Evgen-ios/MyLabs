/*:
 ## Упражнение для приложения - фитнес-вычисления
 
 >Эти упражнения подкрепляют понятия Swift в контексте фитнес-приложения.
 
 Ваше фитнес-приложение отслеживает пульс пользователя, но вы также хотите показывать их средний пульс за последний час.  Создайте три константы, `heartRate1`, `heartRate2` и `heartRate3`, соотвествующие разным показаниям пульса.  Присвойте каждой из них разные значения от 60 до 100.  Создайте константу `addedHR`, равную сумме всех трёх показаний пульса.  Теперь создайте константу `averageHR`, равную `addedHR`, делённую на 3, чтобы получить среднее значение.  Напечатайте результат.
 */
let (heartRate1, heartRate2, heartRate3) = (12,46,100)
let addedHR = heartRate1 + heartRate2 + heartRate3
let averageHR = addedHR / 3
print(averageHR)
/*:
 Теперь объявите ещё три константы, `heartRate1D`, `heartRate2D` и `heartRate3D`, равные тем же значениям, что и `heartRate1`, `heartRate2` и `heartRate3`.  Эти новые константы должны быть типа `Double`.  Создайте константу `addedHRD`, равную сумме трёх новых показаний пульса.  Создайте константу `averageHRD`, равную `addedHRD`, делённую на 3, чтобы получить среднее значение новых констант.  Напечатайте результат.  Отличается ли он от предыдущего?  Почему?  Напечатайте ответ.
 */

let heartRate1D: Double = Double(heartRate1)
let heartRate2D: Double = Double(heartRate2)
let heartRate3D: Double = Double(heartRate3)
let addedHRD: Double = heartRate1D + heartRate2D + heartRate3D
let averageHRD = addedHRD / 3
print(averageHRD)

//: [Ранее](@previous)  |  страница 2 из 8  |  [Далее: Упражнение - составные операторы присваивания](@next)

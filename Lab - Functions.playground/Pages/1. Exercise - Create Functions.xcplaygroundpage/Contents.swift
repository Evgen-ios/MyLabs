/*:
 ## Упражнение — создание функций
 
 Создайте функцию, называющуюся `introduceMyself`, которая выводит краткую информацию о вас.  Вызовите функцию и зафиксируйте результат её работы.
 */
func introduceMyself () {
    print("Привет, тебе поменяют часы на новые.")
}

introduceMyself()
/*:
 Напишите функцию под названием `magicEightBall`, которая генерирует случайное число, и затем используйте либо оператор switch, либо if-else-if, чтобы выводить разные ответы на основе сгенерированного случайного числа. `let randomNum = arc4random_uniform(UInt32(5))` сгенерирует случайное число от 0 до 4, после чего вы можете выводить разные фразы, соответствующие сгенерированному числу.  Вызовите функцию несколько раз и зафиксируйте разные результаты.  Обратите внимание, что генерация случайных чисел не будет работать, если вы до её вызова не используете `import Foundation` (см. ниже).  Это происходит потому, что функция `arc4random_uniform(_:)` объявлена в фреймворке `Foundation`.
 */
import Foundation
func magicEightBall () -> UInt32 {
    let randomNum = arc4random_uniform(UInt32(5))
    return randomNum
}

magicEightBall()
magicEightBall()
magicEightBall()
//: страница 1 из 6  |  [Далее: Упражнение для приложения — работающее приложение](@next)

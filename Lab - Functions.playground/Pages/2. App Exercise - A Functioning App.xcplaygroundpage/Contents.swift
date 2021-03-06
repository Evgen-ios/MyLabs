/*:
 ## Упражнение для приложения — работающее приложение
 
 >Эти упражнения закрепляют понимание Swift в контексте фитнес-приложения.
 
 Как вы уже догадались, функции имеют ключевое значение в работе приложения.  К примеру, в каждом задании, связанным с шагомером, до данного момента мы просто присваивали количество шагов переменной `steps`.  Это не слишком реалистично, учитывая, что количество шагов увеличивается по одному при каждом шаге и продолжает меняться в течение всего дня.
 
 Такой повторяющийся процесс — идеальный кандидат для функции.  Напишите функцию `incrementSteps` после объявления `steps` ниже, которая увеличит переменную `steps` на единицу и затем напечатает её значение.  Вызовите функцию несколько раз и зафиксируйте результаты.
 */
var steps = 0
func incrementStepa() -> Int {
    steps += 1
    return steps
}


print(incrementStepa())
print(incrementStepa())
print(incrementStepa())

/*:
 Аналогично, если мы хотим регулярно сообщать пользователю о его успехах, мы можем перенести в функцию условные инструкции, которые проверяют достигнутые результаты.  Напишите функцию `progressUpdate` после объявления `goal` ниже.  Функция должна вывести «Хорошее начало!» в случае, если `steps` меньше 10% от `goal`, «Вы на пути к половине цели!», если `steps` меньше, чем половина `goal`, «Вы уже выполнили больше половины своей цели!», если `steps` меньше, чем 90% от `goal`, «Вы почти достигли цели!», если `steps` меньше `goal`, и «Вы выполнили вашу цель!» в противном случае.  Вызовите функцию несколько раз, присваивая до этого разные значения переменной `steps`, и зафиксируйте результаты.  Помните, что вы можете конвертировать числа с использованием инициализаторов Int или Double.
 */
let goal = 10000

func progressUpdate(steps: Int) {
    if steps < Int(Double(goal) * 0.1) {
            print("Хорошее начало!")
        }
    else if steps < (goal/2) {
            print("Вы на пути к половине цели!")
        }
    else if steps < (goal - Int(Double(goal) * 0.1)) {
            print("Вы уже выполнили больше половины своей цели!")
        }
    else if steps < goal {
            print("Вы почти достигли цели!")
        }
    else {
            print("Вы выполнили вашу цель!")
        }
    }

progressUpdate(steps:9901)
//: [Ранее](@previous)  |  страница 2 из 6  |  [Далее: Упражнение — Параметры и метки аргументов](@next)

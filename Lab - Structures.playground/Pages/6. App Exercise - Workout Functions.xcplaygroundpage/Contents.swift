/*:
 ## Упражнение для приложения — функции разминки
 
 >Эти упражнения закрепляют понимание Swift в контексте фитнес-приложения.
 
 Ниже создана структура `RunningWorkout`. Добавьте в неё метод под названием `postWorkoutStats`, выводящий в консоль информацию о разминке. Затем создайте экземпляр структуры `RunningWorkout` и вызовите `postWorkoutStats()`.
 */
struct RunningWorkout {     // Беговая разминка
    var distance: Double    // Пройденное расстояние
    var time: Double        // Потраченное время
    var elevation: Double   // Изменение высоты над уровнем моря
    
    func postWorkoutStats(){
        print("Дистанция:\(distance), Время:\(time) мин., Высота:\(elevation) метров над уровнем моря")
    }
}
let newDay = RunningWorkout(distance: 15, time: 75, elevation: 650)
newDay.postWorkoutStats()
/*:
 Далее определена структура `Steps`, отслеживающая данные по количеству шагов. В ней есть целевое количество шагов на день и количество шагов, проделанное к настоящему моменту. Создайте в этой структуре метод `takeStep`, который увеличивает `steps` на единицу. Затем создайте экземпляр типа `Steps` и вызовите `takeStep()`. Выведите в консоль значение  свойства `steps` до и после вызова метода.
 */
struct Steps {      // Шаги
    var steps: Int  // Текущее количество шагов за сегодня
    var goal: Int   // Целевое количество шагов на день
    
    mutating func takeStep() {
        steps += 1
    }
}
var ste = Steps(steps: 100, goal: 500)
print(ste.steps)
ste.takeStep()
print(ste.steps)
//: [Ранее](@previous)  |  страница 6 из 10  |  [Далее: упражнение — вычислимые свойства и наблюдатели свойства](@next)

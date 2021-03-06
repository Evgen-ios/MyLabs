/*:
 ##  Упражнение - Определение базового класса
 
 - Объяснение: упражнения ниже базируются на игре, в которой космический корабль должен избегать препятствий в космосе.  Корабль находится в нижней части координатной системы и может двигаться только налево и направо.  Препятствия «падают» сверху вниз.  На протяжении всех упражнений мы будем создавать классы, представляющие разные типы кораблей, которые могут быть использованы в игре.
 
 Создайте класс `Spaceship` (космический корабль) с тремя переменными свойствами: `name` (название), `health` (жизнеспособность) и `position` (расположение).  Значение по умолчанию для `name` должно быть пустой строкой.  `health` изначально должно быть равно 100.  `position` должно быть представлено целым числом `Int`, где отрицательные значения означают, что корабль располагается слева от центра, а положительные — справа.  Значение по умолчанию для `position` должно быть равно 0.
 */
class Spaceship {
    
    var name: String = ""
    var healt: Int = 100 {
        didSet {
            if healt <= 0 {
                print("Извините. Ваш корабль разрушился. Хотите сыграть снова?")
            }
        }
    }
    var position: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func moveLeft(countToMove: Int) {
        self.position -= countToMove
    }
    
    func moveRight(countToMove: Int) {
        self.position += countToMove
    }
    
    func wasHit(hit: Int = 5) {
        self.healt -= hit
    }
    
    
//    init(name: String, healt: Int, position: Int) {
//        self.name = name
//        self.healt = healt
//        self.position = position
//    }
}

/*:
 Создайте константу `let` с именем `falcon` («сокол») и присвойте ей экземпляр `Spaceship`.  После инициализации, сделайте `name` равным "Сокол".
 */
let falcon = Spaceship(name: "Сокол")
print("Позиця кораля: \(falcon.position)")
falcon.moveLeft(countToMove: 2)
print("Позиця кораля: \(falcon.position)")
falcon.moveRight(countToMove: 1)
print("Позиця кораля: \(falcon.position)")

/*:
 Вернитесь к определению класса `Spaceship` и добавьте в него метод `moveLeft()`.  Этот метод должен сдвигать расположение корабля влево на единицу.  Добавьте аналогичный метод `moveRight()`, сдвигающий корабль вправо.  После определения этих методов, используйте их для перемещения `falcon` дважды влево, а затем один раз вправо.  Выведите в консоль расположение `falcon` после каждого его изменения.
 */
falcon.wasHit(hit: 50)
print("У вас осталось: \(falcon.healt) жизней")
falcon.wasHit()
print("У вас осталось: \(falcon.healt) жизней")
falcon.wasHit(hit: 50)
print("У вас осталось: \(falcon.healt) жизней")
/*:
 Напоследок классу `Spaceship` в данном примере требуется метод, который вызывается в случае столкновения корабля с препятствием.  Снова вернитесь к определению класса `Spaceship` и добавьте метод `wasHit()`, уменьшающий жизнеспособность корабля на 5.  Если `health` меньше или равна 0, метод должен вывести в консоль "Извините. Ваш корабль разрушился. Хотите сыграть снова?".   После определения данного метода, вызовите его для экземпляра `falcon` и выведите в консоль значение `health`.
 */


//: страница 1 от 4  |  [Далее: Упражнение - создание класса-наследника](@next)

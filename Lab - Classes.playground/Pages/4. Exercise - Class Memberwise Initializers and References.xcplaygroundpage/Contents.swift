/*:
 ## Упражнение - Поэлементные инициализаторы класса и ссылки
 
 - Объяснение: упражнения ниже базируются на игре, в которой космический корабль должен избегать препятствий в космосе.  Корабль находится в нижней части координатной системы и может двигаться только налево и направо.  Препятствия «падают» сверху вниз.  На протяжении всех упражнений мы будем создавать классы, представляющие разные типы кораблей, которые могут быть использованы в игре.  Базовый класс `Spaceship` и подклассы `Fighter`и `ShieldedShip` определёны ниже.  Вам они понадобятся для завершения упражнений.
 */
class Spaceship {
    var name: String    // название
    var health: Int     // жизнеспособность
    var position: Int   // расположение

    init(name: String, health: Int, position: Int) {
        self.name = name
        self.health = health
        self.position = position
    }
    
    func moveLeft() {
        position -= 1   // сдвигает корабль влево на 1
    }
    
    func moveRight() {
        position += 1   // сдвигает корабль вправо на 1
    }
    
    func wasHit() {
        health -= 5     // столкновение уменьшает жизнеспособность
    }
}

class Fighter: Spaceship {
    let weapon: String          // вооружение
    var remainingFirePower: Int // боеприпасы
    
    init(name: String, health: Int, position: Int, weapon: String, remainingFirePower: Int) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: name, health: health, position: position)
    }
    
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            // У вас не осталось боеприпасов
            print("You have no more fire power.")
        }
    }
}

class ShieldedShip: Fighter {
    var shieldStrength: Int // мощь защиты
    
    init(name: String, health: Int, position: Int, weapon: String, remainingFirePower: Int,shieldStrength: Int) {
        self.shieldStrength = shieldStrength
        super.init(name: name, health: health, position: position, weapon: weapon, remainingFirePower: remainingFirePower)
    }
    
    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }
}

let falcon = Spaceship(name: "Сокол", health: 100, position: 0)

/*:
 Обратите внимание, что определение каждого класса выше выдаёт ошибку «У класса нет конструкторов (инициализаторов)».  В отличие от структур, у классов нет поэлементных инициализаторов, так как стандартные поэлементные конструкторы не всегда хорошо работают с наследственностью.  Вы можете избавиться от ошибок, указав значения по умолчанию для всех хранимых свойств, но более общепринятой практикой является определением собственных инициализаторов.  Вернитесь к определению `Spaceship` и добавьте конструктор, который в качестве аргументов принимает каждое свойство `Spaceship`, и устанавливает их соответствующим образом.
 
 Создайте экземпляр класса `Spaceship` с именем `falcon`.  Используйте поэлементный инициализатор, который вы только что создали.  Название корабля должно быть "Сокол".
 */
let defender = Fighter(name: "Защитник", health: 100, position: 15, weapon: "Мачета", remainingFirePower: 10)

/*:
 Теперь добавьте конструктор в класс `ShieldedShip`, который в качестве аргументов принимает все свойства классов `ShieldedShip`, `Fighter` и `Spaceship`, и инициализирует свои свойства соответствующим образом.  Помните, что вы можете вызвать инициализатор класса `Fighter` с помощью `super.init`.
 
 Создайте экземпляр класса `ShieldedShip` с именем `defender`.  Используя только что созданный вами поэлементный инициализатор, присвойте кораблю название "Защитник".
 */


/*:
 Создайте новый экземпляр класса `Spaceship` под именем `sameShip` и установите его равным `falcon`.  Выведите в консоль расположение `sameShip` и `falcon`, затем вызовите `moveLeft()` для `sameShip` и снова выведите в консоль позиции `sameShip` и `falcon`.  Обе ли позиции изменились?  Почему?  Если оба объекта были бы структурами, а не классами, был бы результат таким же?  Ответьте с помощью комментрания в коде.
 */
// Так как класс это сслочный тип то изменились оба значения так как это два обьекта ссылаюшиеся на одну и туже область памяти
// В случае со структурами мы присвоили бы значения одного элемента другому, но они по прежнему бы ссылались на разные участки памяти и соответственно при изменение одного элемента
// значение другого не изменились бы.
let sameShip: Spaceship = falcon

print("Позиция:\(sameShip.position)")
print("Позиция:\(falcon.position)")
sameShip.moveLeft()
print("Позиция\(sameShip.position)")
print("Позиция:\(falcon.position)")

/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Ранее](@previous)  |  страница 4 из 4

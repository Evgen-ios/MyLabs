/*:
 ## Упражнение - создание класса-наследника
 
 - Объяснение: упражнения ниже базируются на игре, в которой космический корабль должен избегать препятствий в космосе.  Корабль находится в нижней части координатной системы и может двигаться только налево и направо.  Препятствия «падают» сверху вниз.  На протяжении всех упражнений мы будем создавать классы, представляющие разные типы кораблей, которые могут быть использованы в игре.  Базовый класс `Spaceship` определён ниже.
 */
class Spaceship {
    var name: String = ""   // название
    var health = 100        // жизнеспособность
    var position = 0        // расположение
    
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

/*:
 Определите новый класс `Fighter` (истребитель), являющийся наследником `Spaceship`.  Добавьте переменное свойство `weapon` (вооружение), равное по умолчанию пустой строке, и переменное свойство `remainingFirePower` (боеприпасы), равное по умолчанию 5.
 */
class Fighter: Spaceship {
    var weapon: String = ""
    var remainingFirePower: Int = 5

    func fire(){
        if remainingFirePower > 0 {
            self.remainingFirePower -= 1
        } else {
            print("У вас не осталось боеприпасов")
        }
    }
}

let destroyer = Fighter()
destroyer.weapon = "Лазер"
destroyer.remainingFirePower = 10
destroyer.name = "Разрушитель"
print(destroyer.position)
destroyer.moveRight()
print(destroyer.position)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
/*:
 Создайте экземпляр `destroyer` (разрушитель) класса `Fighter`.  `Fighter` может разрушать падающие объекты, чтобы избежать столкновения с ними.  После инициализации, установите `weapon` равным "Лазер", а `remainingFirePower` — равным 10. Обратите внимание, так как класс `Fighter` является наследником класса `Spaceship`, у него есть свойства `name`, `health` и `position`, а также методы `moveLeft()`, `moveRight()` и `wasHit()`, хотя вы их и не добавляли при определении класса `Fighter`.  Зная это, установите `name` равным "Разрушитель", выведите в консоль значение `position`, затем вызовите `moveRight()` и снова выведите значение `position`.
 */
let falcon = Spaceship()
// Потому что класс Spaceship не содержит данное свойство
//falcon.weapon

/*:
 Снова создайте константу `let` с именем `falcon` («сокол») и присвойте ей экземпляр `Spaceship`.  Попробуйте вывести значение `weapon` для экземпляра `falcon`.  Почему это не сработало?  Ответьте в виде комментария, и закоментируйте код, который не компилируется.
 */


/*:
 Добавьте метод `fire()` в класс `Fighter`.  Этот метод должен проверить, что `remainingFirePower` больше 0, и, если это так, уменьшить `remainingFirePower` на единицу.  В противном случае выведите в консоль "У вас не осталось боеприпасов".  Вызовите `fire()` для экземпляра `destroyer` несколько раз и выведите в консоль значение `remainingFirePower` после каждого вызова.
 */


//: [Ранее](@previous)  |  страница 2 из 4  |  [Далее: Упражнение - Переопределение методов и свойств](@next)

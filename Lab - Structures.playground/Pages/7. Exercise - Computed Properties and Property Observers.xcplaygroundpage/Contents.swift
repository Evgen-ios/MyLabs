/*:
 ## Упражнение - вычислимые свойства и наблюдатели свойства
 
 У структуры `Rectangle` ниже есть для свойства, одно для хранения высоты прямоугольника, а другое — для ширины. Добавьте вычислимое свойство, которое вычисляет площадь прямоугольника (то есть произведение ширины на высоту). Создайте экземпляр структуры `Rectangle` и выведите свойство `area` в консоль.
 */
struct Rectangle {  // Прямоугольник
    var width: Int  // Ширина
    var height: Int // Высота
    
    func area() -> Int {
       return width + height
    }
}

let rectangle = Rectangle(width: 10, height: 20)
print(rectangle.area())

/*:
 В структуре `Height` ниже, высота представлена как в дюймах, так и в сантиметрах. Однако, если меняется свойство `heightInInches`, переменная `heightInCentimeters` также должна меняться, чтобы ему соответствовать. Добавьте `didSet` к каждому из свойств, которое будет проверять, содержит ли другое свойство необходимое значение, и, если нет, устанавливать его. Если вы установите значение другого свойства сразу, без проверки, у вас получится вечный цикл, в котором каждое из свойств будет устанавливать другое по очереди.
 
 Создайте экземпляр типа `Height` и измените одно из его свойств. Выведите в консоль другое свойство, чтобы удостовериться, что оно соответственно изменилось.
 */
struct Height {                         // Высота
    var heightInInches: Double {         // Высота в дюймах
        didSet {
        if heightInCentimeters.isNaN{
            self.heightInInches = heightInCentimeters / 2.54
            }
        }
    }
    var heightInCentimeters: Double {    // Высота в сантиметрах
    didSet {
        if heightInCentimeters.isNaN{
            self.heightInCentimeters = heightInInches * 2.54
        }
    }
}
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches * 2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters / 2.54
    }
}

let height = Height(heightInInches: 100)
height.heightInCentimeters
height.heightInInches
//: [Ранее](@previous)  |  страница 7 из 10  |  [Далее: упражнение для приложения — среднее время и ободряющие сообщения](@next)

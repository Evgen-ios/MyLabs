/*:
 ## Упражнение — методы
 
 Ниже вы видите структуру `Book`. Добавьте метод экземпляра к этой структуре с именем `description`, который выводит в консоль информацию о книге. Затем создайте экземпляр структуры `Book` и вызовите данный метод для созданного экземпляра.
 */
struct Book {           // Книга
    var title: String   // Название
    var author: String  // Автор
    var pages: Int      // Количество страниц
    var price: Double   // Цена
    
    var description: String {
        return "Название: \(title), Автор: \(author), Страниу:\(pages), Цена:\(price)₽"
    }
    
}

let book = Book(title: "Swift Book", author: "Vasiliy Ysov", pages: 367, price: 900)
print(book.description)
/*:
 Изучите структуру `Post`, представляющую стандартное послание в социальной сети. Добавьте изменяющий (`mutating`) метод в эту структуру под названием `like`, который будет увеличивать `likes` на единицу. Затем создайте экземпляр структуры `Post` и вызовите его метод `like()`. Выведите в консоль свойство `likes` до и после вызова метода, чтобы проверить, изменилось ли количество лайков.
 */
struct Post {                   // Послание
    var message: String         // Текст сообщения
    var likes: Int              // Число лайков
    var numberOfComments: Int   // Количество комментариев
    
    
    mutating func like(){
        likes += 1
    }
}

var like = Post(message: "VK", likes: 55, numberOfComments: 90)
like.like()
print(like.likes)
//: [Ранее](@previous)  |  страница 5 из 10  |  [Далее: упражнение для приложения — функции разминки](@next)

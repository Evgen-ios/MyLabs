/*:
 ## Упражнение - массивы
 
 Вы — организатор благотворительного мероприятия местного сообщества.  Вам нужно составить список людей, которые на него зарегистрировались.  Создайте переменную `registrationList`, которая будет содержать строки.  Она должна быть пустой после инициализации.
 */
var registrationList: [String] = []

/*:
 Ваша подруга Сара стала первой, кто зарегистрировался на событие.  Добавьте её имя в `registrationList`, используя метод `append`.  Выведите в консоль содержимое коллекции.
 */
registrationList.append("Сара")
print (#line, "\(registrationList) \(registrationList.count)")

/*:
 Добавьте ещё четыре имени в массив с помощью оператора `+=`.  Все имена должны быть добавлены за один раз.  Выведите в консоль содержимое коллекции.
 */
registrationList += ["Тамара","Валя","Таня","Катя"]
print (#line, "\(registrationList) \(registrationList.count)")

/*:
 Используя метод `insert(_:at:)`, добавьте `Чарли` в массив в качестве второго элемента.  Выведите в консоль содержимое коллекции.
 */
registrationList.insert("Чарли", at: 1)
print (#line, "\(registrationList) \(registrationList.count)")
/*:
 Один из участников решил передать свою регистрацию кому-то ещё.  Используя индексацию массива, поменяйте шестой элемент на `Ребекка`.  Выведите в консоль содержимое коллекции.
 */
let newPerson = registrationList.remove(at: 5)
registrationList.append("Ребекка")
print (#line, "\(registrationList) \(registrationList.count)")

/*:
 Вызовите `removeLast()` для `registrationList`.  Если всё было сделано правильно, этот вызов должен убрать `Ребекка` из коллекции.  Запишите результат `removeLast()` в новую константу `deletedItem`, затем выведите `deletedItem` в консоль.
 */
let deletedItem = registrationList.removeLast()
print (#line, "\(registrationList) \(registrationList.count)")
print("\(deletedItem)")


//: страница 1 из 4  |  [Далее: Упражнение для приложения - занятия спортом](@next)

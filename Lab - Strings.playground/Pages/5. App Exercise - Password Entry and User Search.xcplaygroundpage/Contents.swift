/*:
 ## Упражнение для приложения — ввод пароля и поиск пользователя
 
 >Эти упражнения закрепляют понимание Swift в контексте фитнес-приложения.
 
 Вы решили добавить в ваше фитнес-приложение соревновательный момент.  Пользователи смогут соревноваться с друзьями, выполняя фитнес-задания.  Для этого им нужен аккаунт с паролем. Исользуя if-else, проверьте, что пароль, введённый пользователем, и пароль, запомненный системой, совпадают.  Пароли с разной капитализацией букв должны отличаться, но вы решили разрешить вашим пользователям использовать любую капитализацию в их именах.   Если имя пользователя и пароль подходят, выведите «Вы вошли!».  Иначе, выведите «Пожалуйста, проверьте ваше имя пользователя и пароль и попробуйте снова.»
 */
let storedUserName = "TheFittest11"         // запомненное системой имя пользвателя
let storedPassword = "a8H1LuK91"            // запомненный системой пароль
let enteredUserName = "thefittest11"        // введённое пользователем имя
let enteredPassword: String = "a8H1LuK9"    // введённый пользователем пароль

if storedUserName.uppercased() == enteredUserName.uppercased() && storedPassword == enteredPassword {
    
    print("Вы вошли!")
    
} else {
    
    print("Пожалуйста, проверьте ваше имя пользователя и пароль и попробуйте снова.")
    
}
/*:
 После того, как пользователи войдут в систему, у них должна быть возможность найти в списке своих друзей.  Они могу ввести имя или часть имени, а затем пролистывать все имена пользователей, которые содержат введённую часть.  Далее мы ещё поработаем с циклами, а в данный момент давайте сосредоточимся на одной итерации такого цикла.  Представьте, что вы ищете приятеля с именем пользователя СуперШагатель.  Вы вводите «шаг» в строку поиска и приложение начинает поиск.  Когда приложение находит имя пользователя, оно проверяет, содержит ли «СуперШагатель» строку «шаг».
 
 Используя `userName` и `searchName` ниже, напишите выражение if-else, которое проверяет, содержится ли искомая строка в `userName`.  Поиск должен *игнорировать* капитализацию букв.
 */
import Foundation
let userName = "СуперШагатель"
let searchName = "шаг"
if userName.uppercased().contains(searchName.uppercased()){
    print("Нашли имя")
}


//: [Ранее](@previous)  |  страница 5 из 5

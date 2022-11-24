// This is first commit in this playground.

import Darwin

var oGreeting: String = "test"
var data: Int
var id: Int

oGreeting = "Hello my friend!"
data = 1
id = 1 + 1

print(oGreeting, data)

print(id)

print("hello world")

let myConstant = 117

let pi = 3.14

// Значение константы можно присвоить только 1 раз.
// Константа объявляется через слово  let.

let name: String
name = "Anton"
print(name)

// Оригинальный способ присвоения значения.
let explitDouble: Double = 70

// Один из способов вложения(сложения) переменных в строки.
let label = "The width is"
let width = 11
let widthLabel = label + " " + String(width)


//  Используем конструкцию \() для оптимизации кода.
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."


// Используем три многоточия для многострочного отображения.
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
print(quotation)


// Можно создавать массивы и словари? использую конструкцию кв.скобок

var fruits = ["apples", "limon", "bananas",]
fruits[1] = "sliva"
print(fruits)

fruits.append("kiwi")
print(fruits)

// Пустой массив или словарь
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

fruits = []
//occupations = [:] Не добавлял.


let userAge: Int = 35
let userName: String = "Anton"
let userWeight: Double = 72.5

let c: Float
let e: Character
let f: Bool

print(userName, userAge, userWeight)

-4 // унарный оператор
5 + 6 // бинарный оператор 2 операнда 5 и 6
// 3 > 2 ? 3 : 3 оператор управления потоком

let result = 4 + -4
print(result)

// синтаксис операторов - один пробел и чтобы все было красиво!
// перенос строки для xcoda = пробел!

var age = 4
var finalResult = age + 4
finalResult += 1            // Составной оператор присваивания (! на 0 делить нельзя !)
print(finalResult)
// % - оператор остатка от деления!


// Целые и дробные числа.
print(2.0 + 3.0)
print(2.0 - 3)
print(2 * 2.5) // умеет приводить Int к Floaty только с Литералами
print(4 / 3.0)


let oAge = 35
let oName = "Anton"

let oResult = oAge == 35 || name == "Anton"
print(oResult)


// Каждый из операторов имеет приоритет, то есть порядок в котором будут выполняться эти операторы
// все как в математике.
// 1. * / %
// 2. + -
// 3. < > <= >=
// 4. == !=
// 5. &&
// 6. ||
// 7. ?
// 8. = += -= *= /= %=


let bResult = 45 + 18 * 6 / 3 - 4
//               3    1   2   4
print(bResult)

// Приоритеты можно распределять с помощью скобок!


let cAge = 35
let cName = "Anton"
let isAdult = cAge >= 25 // true
let hasRightName = cName == "Anton" || name == "Petr" // true
let isGoodOccupant = isAdult && hasRightName
print(isGoodOccupant) // true


//          Операторы условного перехода If Switch (? - тернарник).

// IF
let dAge = 22
print("Привет, незнакомец!")
if dAge < 20 {
    print("К сожалению, ты слишком молод!")
} else if dAge > 20 && dAge <= 25{
    print("Ты тот кто нам нужен!")
}
else {
    print("К счастью, ты слишком стар!")
}

// SWITCH
let eAge = 42
let eName = "Ivan"
switch eAge {
case ..<20: print("Hello felas!")
case 20...25: print("Good age!")
case 26...: print("You age are too much!")
default: print("Who you are?")
}

// Тернарный оператор использвуют для констант!

let fAge = 42
let fMessage = fAge > 20 ? "So young" : "So old!"
print(fMessage)

print("Enter you name:")
let string = readLine() ?? ""

//print("Ваше имя", string)


//          Опциональные значение.

//  Как работать с опциональными типами

//  1.  Явная Безопасная распаковка (Explicity unwrap)
//  2.  Явная Небезопасная распаковка (Force unwrap)
//  3.  Неявная Безопасная распоковка (Implicity unwrap)
//  4.  Предоставление по умолчанию


// 1 Переменные что внутри фигурных скобок != за скобками. С1 и С1 разные!!!
// ЛУЧШЕ ИСПОЛЬЗОВАТЬ ЭТО! ЯВНАЯ БЕЗОПАСНАЯ ПРОВЕРКА!
let a1: Int = 1
let b1: Int? = 1
let c1: Int? = nil

if let b1 = b1,
   let c1 = c1
{
    print(c1 + b1)
} else {
    print("b1 no value")
}

if let c1 = c1 {
    print(a1 + c1)
} else {
    print("c1 have no value")
}

// 2
// ! - оператор небезопасной распоковки (палка смерти)
let a2: Int = 1
let b2: Int? = 1
let c2: Int? = nil
print(a2 + b2!)

// 3
// Тоже опасная история, ! знак ставится после объявления переменной
let a3: Int = 1
let b3: Int! = 1
let c3: Int! = nil
print(a3 + b3)

// 4 значения по умолчанию, ?? - если не получается вычисление берется значение с правого операнда
// изза приоритетов операций + главнее чем ?? поэтому нужны круглые скобки ()
let a4: Int = 1
let b4: Int? = 1
let c4: Int? = nil
print(a4 + (b4 ?? 0))


//          Преобразование типов.

// из Float & Double преобразование всегда в меньшую сторону

let a5 = 1
let b5 = 2.4
let c5 = "3"
let d5 = true
let e5 = Character("Q")
let f5: Float = 3.14

let intB = Int(b5)      // 2
let intC = Int(c5)      // Optional(34)
let intF = Int(f5)      // 3

let doubleA = Double(a5)        // 1.0
let doubleC = Double(c5)        // Optional(3.0)
let doubleF = Double(f5)        // 3.140000104904175 - ошибка в точности преобразования


let stringA = String(a5)        // "1"
let stringB = String(b5)        // "2.4"
let stringD = String(d5)        // "true"
let stringE = String(e5)        // "Q"
let stringF = String(f5)        // "3.14"


let floatA = Float(a5)          // 1.0
let floatB = Float(b5)          // 2.4
let floatC = Float(c5)          // Optional(3.0)

// Преобразование Character только из 1ого символа и только из строки!
let characterC = Character(c5)

// Преобразование Bool можно получать только из строк!
let a6 = "true"
let b6 = "false"
let c6 = "YES"

let boolA = Bool(a6)            // Optional(true)
let boolB = Bool(b6)            // Optional(false)
let boolC = Bool(c6)            // nil



//          Приведение типов. (type casting, кастинг, каст)

// Типы невсегда однозначны, например INT является также Numeric и AdditiveArithmetic и еще много чем. Другими словами это просто УТОЧНЕНИЕ ТИПА!

// ANY
let a7: Any = 1
let b7: Any = 6
let c7: Any = "hello"

// AS
let d7 = (a7 as! Int) + (b7 as! Int)       // 7 --- FORCE CAST --- Так не принято делать
let e7 = a7 as? Int                        // nil

// IS - проверяет что находится внутри ANY выдает TRUE FALSE т.е. возвращает логическое значение!
let f7 = a7 is Int



//          Функции.


func sum(firstNumber: Int, secondNumber: Int) -> Int {
    return firstNumber + secondNumber
}

let a8 = 4 + 5
let b8 = sum(firstNumber: 4, secondNumber: 6)

print(a8, b8)

//          Синтаксис функций (можно писать развернуто внутри функции как ниже).

func pow3(numberForPow num: Int) -> Int{
    return num * num * num
}
let a9 = pow3(numberForPow: 1)
let b9 = pow3(numberForPow: 2)
let c9 = pow3(numberForPow: 3)
print(a9, b9, c9)

//          В аргументах можно поставить нижнее подчеркивание, тогда внутренее имя не требуется.

func pow4(_ num: Int) -> Int {
    return num * num * num * num
}
let a10 = pow4(1)
let b10 = pow4(2)
let c10 = pow4(3)
print(a10, b10, c10)

//          Внутри функции можно комбинировать с присвоением аргументов. Вопрос вкуса и понятности для других программистов.

func mul(
    firstNumber num1: Int,
    num2: Double,
    _ num3: Float
) -> String {
    return String(num1 * Int(num2) * Int(num3))
}
let a11 = mul(firstNumber: 1, num2: 2.3, 3.14)
print(a11)

//      Можно ничего не возвращать в функции, ключевое слово VOID вместо RETURN

func pow5(num1: Int, num2: Int) -> Void {
    let result = num1 + num2
    print(result)
}
pow5(num1: 1, num2: 2)

//      Иногда придется возвращать nil, ниже пример для защиты.

func div(_ a: Int, _ b: Int) -> Int? {
    if b != 0 {
        return a / b
    } else {
        return nil
    }
}

let a12 = div(5, 0)
print(a12)

//      Синтаксический "САХАР"! xDD - Данная функция VOID тк после круглых скобок нету ->

func div1(_ a: Int, _ b: Int) {
    print(a / b)
}
div1(5, 1)

//          Сигнатуры функций. Вроде одно название, а все функции разные.

func sum(_ a: Int, _ b: Int) {
    print(a + b)
}
func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func sum(_ a: Double, _ b: Double) {
    print(a + b)
}
func sum(first a: Int, _ b: Int) {
    print(a + b)
}

//          Тело фукнции. То ради чего мы пишем функции.

func getUserFullName() -> String {
    print("Введите имя: ")
    let name = readLine() ?? ""
    print("Введите фамилию: ")
    let surname = readLine() ?? ""
    return name + " " + surname
}
let userFullName1 = getUserFullName()
let userFullName2 = getUserFullName()
let userFullName3 = getUserFullName()

print(userFullName1)

// Можно делать 2 return'a, но через IF

func isTwo(_ a: Int) -> String {
    if a == 2 {
        return "Это двойка!"
    } else {
        return "Это не двойка!"
    }
}
let a = isTwo(3)

// Если тело функции состоит из одной строки, то можно пропустить слово return

func sum1(_ a: Int, _ b: Int) -> Int {
    a + b
}


//          ОБЛАСТИ ВИДИМОСТИ


//          Тут глобальная.
func some() {
    //      Тут локальная область видимости.
}

//          Каждая фигруная скобка создает свою область видимости.
//          Могут быть вложены, образуют иерахрию.
//          Внимательно! Обращать внимание на скоупы и на название переменных!


//          СВОЙСТВА, МЕТОДЫ, ОПЦИОНАЛЬНЫЕ ЦЕПОЧКИ.

"hello".count
4.isZero
let text = "hello"
print(text.count) // 5

//          Также свойства есть у типов.
print(Int.max)

//          Свойства есть и у методов.
let a = 1
let b = "hello"

let r1 = a.isMultiple(of: 2) // false (делится ли число без остатка на 2)
let r2 = b.uppercased()  // HELLO

//          STATIC в свойствах у ТИПА например Int, а свойства без "Static" у значений! Это относится к официальной документации, ВНИМАТЕЛЬНО!

print(Int.random(in: 0...10))

//          Опциональные цепочки. Кроме обычных значений, есть еще опциональные. Как обращаться к их свойствам и методам? Если мы просто попробуем сделать это так же как с не опциональными знач. то получим ошибку. Поэтому нужно их извлекать.

let a: String? = "hello"
if let a = a {
    a.uppercased()
}

//          Но иногда методы и свойства сами возвращают опциональные значения тогда извлечение может стать довольно утомительным.

let a: String? = "hello"
if let a = a, let character = a.first {
    print(character)                        // h
}

//          Поэтому есть специальный оператор ?.

let a: String? = nil
if let character = a?.first {
    print(character)
} else {
    print("empty")                          // empty
}




//          МАССИВЫ. (ARRAY DICTIONARY SET)


//          Хранение одна из важных задач в программировании. Можно хранить данные в переменных и константах. Например информация о работнике предприятия.

let age = 23
let name = "Ivan"
let salary = 3500.00
let childName = "Petr"

//          Но что если нужно хранить много однитипных значений. GENERIC - ДВОЙНОЙ ТИП

let age = 23
let name = "Ivan"
let salary: Array<Double> = [3500.00, 4500.60, 5500.30, 6500.60, 5500.50]
let childName: Array<String> = ["Petr", "Masha", "Sergey"]

//          Массивы строго типизорованы! Плохая практика. Лучше хранить одиннаковые элементы в одном массиве.

let a: [Any] = [1, 2, 3, "hello", 4]
let b = [1, 2, 3, "hello", 4] as [Any]
let c: Array<Any> = [1, 2, 3, "hello", 4]

//          Создание массива.

let names: [String] = ["Ivan", "Petr", "Egor"]
let names = Array<String>(arrayLiteral: "Ivan", "Petr", "Egor")

//          Пустые и опциональные массивы.

let names: [Int] = []
let salary: Array<Double> = []

let childNames: [String?]? = ["Ivan", "Petr", nil]          // Опциональный массив, опциональных строк

//          Индексация массива. Индекс - порядковый номер элемента в массиве. Индекс начинается с 0.

let a = [
    11,     // 0
    12,     // 1
    13,     // 2
    4,      // 3
    5,      // 4
    7       // 5
]

//          Почему индексация начинается с 0? Фан факт из истории.

//          Операции с массивом. Чтобы менять значения в массиве, сам массив должен храниться в переменной.

var a = 2       // Переменная
a = 10

var b = [1, 2, 3, 4, 5]         // Массив
b = [6, 7, 8, 9, 10]

//          Получение данных из массива.

let a = [123, 3, 4, 5, 6]
print(a[0], a[2], a[1], a[3])
print(a[1] + a[3])

let index = 5
if index < a.count {
    print(a[index])
} else {
    print("error")
}

//          Изменение значений в массиве.

var a = [123, 3, 4, 5, 11]
print(a[1])
a[1] = -2
a

a.append(43)            // Добавляет в конец массива элемент.
a.insert(11, at: 0)     // Вставляет в нужное место

//          Удаление из массива. Метод remove(at:).

var a = [123, 3, 4, 5, 11]
a.remove(at: 0)     // [3, 4, 5, 11]
a.remove(at: 2)
a.removeAll()       // Удалить все.


//          ЦИКЛЫ. FOR WHILE

print("hello")
print("hello")
print("hello")

        //          Чаще всего циклы используют с массивами.

let salary = [500, 500, 400, 300]
let sumSalary = salary[0] + salary[1] + salary[2] + salary[3]

        //          Пример с циклом.

let salary = [500, 500, 400, 300]

for element in salary {         //      element - это значение константа всегда!
    print(element)
}

        //          Пример с суммированием элементов в массиве.

let salary = [500, 500, 400, 300]
var summ = 0
for element in salary {
    summ += element         //      1700
}

        //          Пример с Range

for element in 0...5 {
    print("Hello!")
}

for element in 0...5 {
    print("Hello! " + String(element))
}

        //          Что если нужно проитерироваться с определенным шагом?

for element in stride(from: 0, to: 10, by: 2) {         //  Шаг 2
    print("Hello! " + String(element))
}

        //          Цикл While перебирает просто логические условия, которые мы ему даем.

var a = 0
while a < 10 {
    print("Current index is " + String(a))
    a += 1
}

        //          Пример с суммированием элементов в массиве.

let salary = [500, 600, 300, 200]
var summ = 0
var index = 0

while index < salary.count {
    summ += salary[index]
    index += 1
}

        //          Лучше for, когда нужна гибкость использовать while, всегда надо вдумчиво подходить к выбору. While - лучше для алгоритмов.

var summ = 0
var step = 0
while summ < 1000 {
    summ += Int.random(in: 0...100)
    step += 1
}
print(summ, step)

        //          Цикл Repeat While. Сначала проверяет тел цикла, а потом проверяет условия!!! ВАЖНО!

var index = 20
repeat {
    print(index)
    index += 1
} while index < 10

        //          Ранний выход из цикла.

var index = 0
while index < 10 {
    print("Current index - " + String(index))
    index += 1
    if index > 3 {
        break           // Цикл выполнился 4 раза
    }
}

var names = ["Ivan", "Petr", "Oleg", "Pavel"]
var hasName = false
for name in names {
    print(name)
    if name == "Petr" {
        hasName = true
        break
    }
}

        //          Ранний выход из текущего шага. Continue - пропускает текущий шаг. Работает как с FOR так и с WHILE. Можно уйти в бесконечный цикл, внимательно!

var numbers = [0, 1, 2, 3, 4, 5, 6]
for number in numbers {
    if number == 5 {
        continue
    }
    print(number)
}

        //          Один шаг цикла - ИТЕРАЦИЯ. Перебор всего массива - ИТЕРИРОВАНИЕ.



//      ОПЕРАТОР GUARD. Прекращает выполнение блока кода в текущей функции или программе целиком, в случае если не выполнено какое-либо условие.

        //          Условие и сразу идет ELSE, без выполение предварительных выполнений. В конце выполения GUARD в целом, мы должны выйти из текущего цикла или функции.

let a22 = 2

guard a22 == 2 else {
    exit(0)                                     //      Покидаем текущую область видимости.
}

print(a)




func division(_ a: Int, _ b: Int) -> Int? {     //      Функция деления. Принимает 2 целочисленных аргумента, возвращает другой целочисленный аргумент опциональный.
    guard b != 0 else { return nil }            //      Покидаем функции.

    return a / b
}

for index in 0..<10 {
    guard index < 5 else { break }              //      Покидаем цикцлы.
    print(index)
}

        //          ГУАРД очень хороший флаг который показывает что у нас усоловие которое важно что-то значит! Внимательно!


        //         !!! Использование Guard для извлечения опциональных значений !!! ОЧЕНЬ ВАЖНО !!!


func division(_ a: Int?, _ b: Int?) -> Int? {       //      Guard позвляет избавиться от проблемы вложенности.
    guard let a = a else {      //      Попытка извлечь А.
        print("Первое число не может быть nil")
        return nil
    }

    guard let b = b else {
        print("Второе число не может быть nil")
        return nil
    }

    guard b != 0 else {
        print("На 0 делить нельзя")
        return nil
    }
    return a / b
}


func division1(_ a: Int?, _ b: Int?) -> Int? {
    if let a = a {
        if let b = b {
            if b != b {
                return a / b
            } else {
                print("На 0 делить нельзя")
                return nil
            }
        } else {
            print("Второе число не может быть nil")
            return nil
        }
    } else {
        print("Первое число не может быть nil")
        return nil
    }
}

        //      Оператор Guard еще один условный оператор. У него нету блока истинного условия, но есть обязательный блок обработки ложного. В блоке else обязательно покинуть текущий цикл, функцию или завершить программу. Полезнее всего использовать guard для извлечения опциональных значений. Переменные и констаны созданные в результате проверок помещаются в текущую область видимости, а не в вложенную.



//      КОРТЕЖИ. TUPLE.
        //      Новый тип данных который хранит в себе данные как и массив, но разного типа.

let age = 25
let name = "Ivan"
let surname = "Ivanov"
let salary = [100, 200, 300, 400, 500]
let childrenNames = ["Oleg", "Petr"]

let person: [Any] = [
    25,
    "Ivan",
    "Ivanov",
    [100, 200, 300, 400, 500],
    ["Oleg", "Petr"]
]

        //      Eсть проблема, если захочу воспользоваться информацией из person [Any].

if let name = person[1] as? String, let surname = person[2] as? String {
    print("Полное имя: " + name + " " + surname)
}

        //      Нам поможет кортеж.

let personTuple = (      //     Кортеж. Списк параметров через запятую.
    height: 170,
    age: 35,
    surname: "Ivanov",
    name: "Petr",
    salary: [100, 200, 300, 400, 500],
    childrenNames: ["Oleg", "Pavel"])

print(personTuple.name + " " + personTuple.surname)     //      Намного удобнее. Доступ через свойства.

        //      КОРТЕЖ - ЗАКОНЧЕННЫЙ ОБЪЕКТ, нельзя что-либо добавлять.

var t: (Int, Int, Int, String) = (1, 2, 4, "hello")     //      Синтаксис кортежа.

let a = (1, "hello", "bye", 3)
print(a.0, a.1, a.2, a.3)       //      Можно получать доступ через порядковый номер свойства - 1, 2, 3... Все свойства типизированы.

print(type(of: a.2))        //      Функция type of - позволяет узнать тип!

        //      Лучше использовать доступ по именам, чтобы не запутаться. Внимательно!

let person0 = (name: "Anton", age: 35)
let person1: (name: String, age: Int) = (name: "Anton", age: 35)        //      Как угодно можно указывать свойства или нет! Внимательно!
let person2: (name: String, age: Int) = ( "Anton", 35)

var person = (name: "Igor", age: 22)
print(person.name)
person.name = "Pavel"       //      Если кортеж var, то значение свойств можно поменять.
print(person.name)

let name = "Ivan"
let age = 23

let personNew = (name: name, age: age)      //      При создании кортежей можно использовать данные с констант или перменных.
print(personNew)

//      Внимание! Деструктиризация кортежа!

let person = (name: "Petr", age: 21)
let (name, _) = person                    //      Можно игнорировать свойства кортежа при деструктуризации через нижнее подчеркивание _ !
print(name)



//          СЛОВАРИ DICTIONARY  КЛЮЧ - ЗНАЧЕНИЕ


let playersA = [150, 170, 165, 178, 163]     //      Обычный массив

let playersT = (petr: 150, ivan: 170, oleg: 165, ignat: 178, pavel: 163)        //      Кортеж игроков.
print(playersT.ignat)

let playersAT: [(name: String, height: Int)] = [        //      Можно совместить массив с кортежем. !(Жестко)!
    (name: "Ignat", height: 170),
    (name: "Pavel", height: 173),
    (name: "Petr", height: 180),
    (name: "Igor", height: 163),
    (name: "Oleg", height: 176),
]

print(playersAT[3].name, playersAT[3].height)       //      Можно так извлекать.

for player in playersAT {           //      Можно перебрать весь массив и искать по имени и на каждом шаге перебирать, если это Игорь то сможем вывести в консоль его рост и остановить цикл.
    if player.name == "Igor" {      //      Такой перебор займет уйму времени, если будем перебирать 100000000 строк.
        print(player.height)
        break
    }
}

        //      Нам поможет словарь!

let playersD = [        //      Словарь игроков ищет по ключу очень быстро!!!
    "Ignat":170,
    "Pavel":173,
    "Petr":180,
    "Igor":163,
    "Oleg":176,
 ]

print(playersD["Igor"])


let playersDD: Dictionary<String, Int> = [        //      Синтаксис словаря КЛЮЧ ЗНАЧЕНИЕ. В качестве значения - все что угодно, под ключа - hashable типы!
    "Ignat": 170,
    "Pavel": 173,
 ]

let a: [String: Int]? = [:]     //      Пустой опциональный словарь. Словари не упорядоченная коллекция! Компилятор может менять их местами! Внимательно! Порядка нету!

        //      Ключи в словаре УНИКАЛЬНЫ! Нельзя сделать 2 одиннаковых ключа в одном словаре.


        //      Операции со словарем.

var a = ["a": 1, "b": 2]        //      Можно поменять словари, но хранится в переменной.
a = ["c": 3, "d": 4]
a = [:]

print(a["a"])       //      Получаем по ключу! Но опциональные значения.

var a = ["a": 1, "b": 2]
a["a"] = 23
a["b"] = nil        //      Добавляем изменяем удаляем элементы по ключу.
a["x"] = 77
print(a)        //      ["x": 77, "a": 23]

        //      Можно удалить все элементы через функцию removeAll()

let playersD = [        //      Можно перебрать словарь как массив.
    "Ignat":170,
    "Pavel":173,
    "Petr":180,
    "Igor":163,
    "Oleg":176,
 ]

for player in playersD {
    print(player.key, player.value)     //      В значение падает кортеж key & value
}

for (_, value) in playersD {      //      Можно сразу разобрать словарь на кортеж (и допустим заигнорировать ключ key).
    print(value)
}

        //      СЛОВАРЬ ЭТО НЕ МЕСТО ГДЕ МОЖНО ХРАНИТЬ В КОЛЛЕКЦИИ 2 ЗНАЧЕНИЯ !!! ЛУЧШЕ ИСПОЛЬЗОВАТЬ МАССИВ КОРТЕЖЕЙ.




        //          МНОЖЕСТВА SET.   Хранение уникальных значений, производить быстрый поиск на наличия значения и операции над множествами с последующей проверкой.

/*      Задача:
        1. Понимать находится ли сотрудник в офисе в данный момент или нет.
        2. Исключить двойную регистрацию одного и того же сотрудника.
        3. Делать быстрые выборки:
            3.1.    Сотрудников того или иного отдела которые находятся в офисе.
            3.2.    Сотрудников которые отсутвуют в офисе.
            3.3.    Сотрудников которые были в офисе в течении двух дней.
            3.4.    Сотрудников которые были в офисе или в первый, или во второй день, но не подряд.
*/

let salesIt = ["Oleg", "Igor", "Ignat", "Olga"]     //      Все сотрудники отдела IT продаж.

let inOfficeYestaday = ["Ivan", "Petr", "Pavel", "Masha"]       //      Сотрудники которые были в первый день в офисе (вчера).

var inOfficeToday = ["Oleg", "Petr", "Igor", "Olga"]        //      Сотрудники которые были во второй день (сегодня).

for person in inOfficeToday {       //      Поиск, перебираем каждый элемент, чтобы понять в офисе сотрудник или нет.
    if person == "Pavel" {
        print("Pavel at work.")
        break
    }
}

inOfficeToday.append("Sergey")      //      В офис пришел Сергей.

print(inOfficeToday)        //      ["Oleg", "Petr", "Igor", "Olga", "Sergey"]

        //      Проблема, как исключать дубли, если кто-то в течении дня будет входить или выходить из офиса.

var isSergeyInOffice = false
for person in inOfficeToday {
    if person == "Sergey" {
        isSergeyInOffice = true
        break
    }
}

if !isSergeyInOffice {
    inOfficeToday.append("Sergey")
}

        //      Нам помогут словари? (тут глупое дублирование вданном контексте)

let salesItD = [        //      Множества сотрудников отдела IT продаж.
    "Ignat": "Ignat",
    "Olga": "Olga"
]

let inOfficeYestadayD = [       //      Множества сотрудников которые были в первый день в офисе (вчера).
    "Ivan": "Ivan",
    "Petr": "Petr",
    "Pavel": "Pavel",
    "Masha": "Masha"
]

var inOfficeTodayD = [      //       Множества сотрудников которые были во второй день (сегодня).
    "Oleg": "Oleg",
    "Petr": "Petr",
    "Igor": "Igor",
    "Olga": "Olga"
]

if inOfficeTodayD["Ivan"] != nil {      //      Поиск, ищем значение по ключу.
    print("Ivan at work.")
}

if inOfficeTodayD["Ivan"] == nil {      //      Добавляем если отошел.
    inOfficeTodayD["Ivan"] = "Ivan"
}

        //      Ищем всех с. отдела IT продаж, которые были сегодня в офисе. Нам приходится перебирать всех с. отдела, чтобы проверить был ли он офисе или нет.

var salesItInOffice = [String: String]()        //      Заведем словарь
for salesIt in salesItD {
    if inOfficeTodayD[salesIt.key] != nil {
        salesItInOffice[salesIt.key] = salesIt.value
    }
}

let salesItS: Set = ["Oleg", "Igor", "Ignat", "Olga"]     //      Все сотрудники отдела IT продаж.

let inOfficeYestadayS: Set = ["Ivan", "Petr", "Pavel", "Masha"]       //      Сотрудники которые были в первый день в офисе (вчера).

var inOfficeTodayS: Set = ["Oleg", "Petr", "Igor", "Olga"]        //      Сотрудники которые были во второй день (сегодня).

let i = inOfficeTodayS.contains("Igor")     //      Был ли сегодня сотрудник?

let isPetrRegIn = inOfficeTodayS.insert("Petr")     //      Добавление в множетсво через .insert (не дублируется).
let isMashaRegIn = inOfficeTodayS.insert("Masha")

print(isPetrRegIn.inserted, isMashaRegIn.inserted)

let salesItInOfficeS = salesItS.intersection(inOfficeTodayS)        //      Очень удобно смотреть был ли отдел сегодня в офисе или нет.

let salesItNotInOffice = salesItS.subtracting(inOfficeTodayS)       //      Метод substracting показывает кого нету.

let allPersonsInOffice = inOfficeYestadayS.union(inOfficeTodayS)        //      Union объединит два множетсва и покажет всех кто был за 2 дня.

let onlyOneDayInOffice = inOfficeYestadayS.symmetricDifference(inOfficeTodayS)      //      Покажет кто ходил хотя бы 1 день, кто ходил 2 дня в этой выборке нету.


        //      Синтаксис множеств.
        //      Множества не упорядочены!


let a: Set<String> = ["Petr", "Oleg", "Ignat", "Renat"]

let b = Set<String>(["Petr", "Oleg", "Ignat", "Renat"])     //      Обязательно нужно указывать его тип или в типе константы.

let c: Set<String> = Set<String>(["Petr", "Oleg", "Ignat", "Renat"])

let d: Set = Set(["Petr", "Oleg", "Ignat", "Renat"])        //      Можно не указывать тип, который множество будет хранить.


let e: Set<String> = []     //      Пустое множество.

let j: Set<String>?     //     Опциональное множество.

let a: Set = ["Ivan", "Ivan", "Ivan", "Ivan", "Petr", "Oleg", "Ignat"]      //      В множествах значения уникальны!!!

print(a)        //      ["Petr", "Ivan", "Oleg", "Ignat"] Дубли не появляются.


        //      Операции над множествами.


var a: Set = ["Petr", "Oleg"]       //      Замена множества целиком.
a = ["Ivan", "Olga"]        //      {"Olga", "Ivan"}

        //      Получать данные из множества нельзя!

var s: Set = ["Oleg", "Ignat"]      //      Проверка на наличие значения:
let s1 = s.contains("Oleg")
let s2 = s.contains("Olga")
print(s1, s2)       //      "true false"

var s: Set = ["Oleg", "Igor"]
s.insert("Ignat")       //      Можно добавлять значения.
print(s)        //      ["Oleg", "Ignat", "Igor"]

var s: Set = ["Oleg", "Ignat"]
s.remove("Ignat")       //      Удаление значений.
print(s)        //      ["Oleg"]

var s: Set = ["Ivan", "Oleg", "Petr", "Pavel"]

for element in s {      //  Перебор множества, с помощью цикла for
    print(element)
}

/*      Математические операции над множеством.

        1. Пересечение (Intersection) - возвращает элементы, которые есть одновременно в обоих множествах.
        2. Симетрическая разность (Symmetric Difference) - возвращает элементы, которые есть во множестве А и Б, но не те что есть и там и там.
        3. Объединение (Union) - возвращает элементы, которые есть во множестве А и Б, дубли удаляются.
        4. Разность (Subtracting) - возвращает элементы, которые есть во множестве А исключая те, что так же есть во множестве Б.
*/

let s1: Set = [1, 2, 3, 4, 5, 6, 7]
let s2: Set = [4, 5, 6, 7, 8, 9, 10]

let intersectionResult = s1.intersection(s2)        //      [4, 5, 6, 7]    Intersection    -   одновременно в обоих множествах.
print(intersectionResult)

let symmetricDifferenceResult = s1.symmetricDifference(s2)      //      [1, 2, 3, 8, 9, 10]     Symmetric Difference    -   Показывает только разные элементы множеств.
print(symmetricDifferenceResult)

let unionResult = s1.union(s2)      //      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]     Union   -   объединяет, но удаляет все дубликаты внутри множества.
print(unionResult)

let substractingResult = s1.subtracting(s2)     //      [1, 2, 3]   Subtracting     -   удаляет из S1 все что есть в S2.
print(substractingResult)



              ОТЛАДЧИК DEBUGGER.

              Отладка с помощью print().

var a = [1, 2, 3, 4, 5]

if a.count > 5 {
    a.append(1)
    print(1, a)
} else {
    a.append(9)
    print(2, a)
}

if a.count > 5 {
    a.append(1)
    print(3, a)
} else {
    a.append(9)
    print(4, a)
}

print(5, a)

func sum(_ a: Int, _ b: Int) -> Int {
    a + b
}

func minus(_ a: Int, _ b: Int) -> Int {
    a - b
}

func sum(a: Int, andB b: Int, andMunis c: Int) -> Int {     //      Кнопка "Step Over" в Отладчике ИГНОРИРУЕТ ФУКНЦИИ и сразу перескакивает на другую строку.
    let summResult = sum(a, b)
    let minusResult = minus(summResult, c)
    return minusResult
}

func calc(_ a: Int, _ b: Int, _ c: Int) {       //      Кнопка "Step Into" - попадаем в функцию.
    let result = sum(a: a,andB: b, andMunis: c)
    print(result)
}

calc(4, 2, 3)       //      Кнопка Step Out - сразу выходит из функции откуда вызвали.

//      Каких то конкретных шаблонов по откладке нету! Надо пробовать самому искать ошибки и зависимости. Исследуем код!

//      Стек Вызовов (Thread). Показывает какие функции были вызваны п пути сюда. Можно последовательно выходить через Step Out.

//      Функцию Main - генерирует компилятор.

for i in 0..<100 {
    print(i)        //      Можно зайти в свойства брэйкпоинта и указать игнор 50 раз!у
}


        //      СОЗДАНИЕ STRING И МНОГОСТРОЧНЫЕ ЛИТЕРАЛЫ
        //      Вставка переменных, переносы, двойные кавычки и многострочность.

//      Интерполяция строк. " \( ) " - конструкция интерполяции.

let a = 45
let b = 34.34434334
let string = "a: " + String(a) + " b: " + String(b)     //      Приходится преобразовывать переменную в строку и конкатинировать с другой.

let newString = "a: \(a) b: \(b) summ: \(a + 78)"   //      Правильная версия переменной newString. Работает еще быстрее чем конкатинации


//      Двойные кавычки.

let string = "hello \"world\""      //      Можно экранировать кавычки чтобы получить двойные кавычки ^^

print(string)       //      hello "world"

//      Перенос строки.

let string = "hello \nworld"       //      \n - перенос строки.

//      Многострочные строковые литералы (Multiline String).

        //      3 двойных кавычки должны быть на своих отдельных строках.
let string = """
    hello
        world
"""
        //      Отсчет идет от нижных 3х кавычках.


/*      Циклы и Массивы. Практика.

        Задачи:

        1.  Заполнять массив случайными числами.
        2.  Искать масимальный элемент в массиве.
        3.  Возводить значения в массиве в квадрат.
        4.  Удалим из массива все четные значения.
        5.  Создадим новый массив включим в него некоторые элеменгты из исходного массива.
        6.  Осортируем массив по возрастанию.
        7.  Обменяем два массива данными.
        8.  Создадим два новых массива и включим в них некоторые элементы из двух исходных. */

// #1

var a = [Int]()     //      Пустой массив целочисленных чисел.

for _ in 0..<10 {
    a.append(Int.random(in: 0...100))       //      Генерируем случайные числа от 0 до 100 и заполяем по циклу массив А.
}




// #2

let array2 = makeArray()
var maxElement = Int.min

for element in array2 {
    if element > maxElement {
        maxElement = element
    }
}

print(array2)
print(maxElement)

func makeArray() -> [Int] {     //      Перенесем код в функцию.
    var array = [Int]()
    for _ in 0..<10 {
        let randomNumber = Int.random(in: 0...100)
        array.append(randomNumber)
    }
    return array
}


//  #3

var array3 = makeArray()
print(array3)

// 1
for index in 0..<array3.count {
// 2
    array3[index] *= array3[index]
}

print(array3)


//  #4.1

var array41 = makeArray()
var array42 = makeArray()

var index = 0

while index < array41.count {       //      На мой взгляд лучше так конечно делать.
    if array41[index] % 2 == 0 {
        array41.remove(at: index)
    } else {
        index += 1

    }
}

print(array41)

//  #4.2

for index in stride(from: array42.count - 1, to: 0, by: -1) {     //     Перебираем массив с конца с помощью функции "stride".
    if array42[index] % 2 == 0 {
        array42.remove(at: index)
    }
}

print(array42)


  #5

let array5 = makeArray()
var newArray = [Int]()

for element in array5  {
    if element % 2 != 0 {
        newArray.append(element)
    }
}

print(array5)
print(newArray)

//  #6      !!! ПЕРЕСТАНОВКА. Сортировка выбором. !!!

var array = makeArray()

for i in 0..<array.count - 1 {      //      Цикл в цикле for for
    for j in (i+1)..<array.count {
        if array[j] < array[i] {
            array.swapAt(j, i)      //      Очень полезный метод/фунция swapAt
        }
    }
}

print(array)

//array.sort() - одной строкой)))

//  #7 Обмен значениями между массивами. Меняет местами четные/нечетные элементы.

var arrayA = makeArray()
var arrayB = makeArray()

print(arrayA)
print(arrayB)

for index in stride(from: arrayA.count - 1, through: 0, by: -1) {
    if arrayA[index] % 2 == 0 {
        arrayB.append(arrayA[index])
        arrayA.remove(at: index)
    }
}

for index in stride(from: arrayB.count - 1, through: 0, by: -1) {
    if arrayB[index] % 2 != 0 {
        arrayA.append(arrayB[index])
        arrayB.remove(at: index)
    }

}


//  #8 Создание новых массов путем фильтации исходных.


let arrayA = makeArray()
let arrayB = makeArray()

var newA = [Int]()  //  Будем сохранять сюда нечетные значения.
var newB = [Int]()  //  Четные.

for number in arrayA {
    if number % 2 != 0 {
        newA.append(number)
    } else {
        newB.append(number)
    }
}

for number in arrayB {
    if number % 2 != 0 {
        newA.append(number)
    } else {
        newB.append(number)
    }
}


print("--------")
print(newA)
print(newB)


//      Функция SWAP меняет местами значения у двух аргументов.

var arrayA = makeArray()
var arrayB = makeArray()

print(arrayA)   //[26, 71, 98, 42, 71, 3, 69, 77, 38, 94]
print(arrayB)   //[34, 1, 70, 98, 58, 8, 39, 85, 55, 58]

swap(&arrayA, &arrayB)      // & - обязательный синтаксис.

print(arrayA)   //[34, 1, 70, 98, 58, 8, 39, 85, 55, 58]
print(arrayB)   //[26, 71, 98, 42, 71, 3, 69, 77, 38, 94]


        //      Практика вложенных данных.


let a = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

let result = a[0]   //  Получаем первый массив внутри А. Но как получить значение "9" ? xDD

let resultNew = a[2][2]      //      ВАЖНО!!! Так же указываем с трехмерными массивами.

print(resultNew)
print(result)

/*
    1. Фрукт строка сложее нам не надо.
    2. Коробка массив она упорядочена и хранит только один тип данных фрукты.
    3. Холодильник кортеж нет порядка разные типа содержимого.
    4. Кухня кортеж, так как нету порядка и есть разные типа комнат.
    5. Квартира кортеж нет порядка и есть разные комнаты.
    6. Дом массив естьь порядок но дома одинаковые и есть адрес.
    7. Улица словарь, нет порядка но дома одинаковые и имеют адрес.
    8. Город словарь нет порядка но улица одинаковые и имеют название.
*/

let pitch = "Pitch"
let apple = "Apple"

let box = [pitch, apple]
let milk = "Milk"
let fridge = (fruitBox: box, milk: milk)
let tv = "TV"
let kitchen = (fridge: fridge, tv: tv)
let bed = "Bed"
let armchair = "Armchair"
let bedroom = (bed: bed, armchair: armchair)
let flat = (kitchen: kitchen, bedroom: bedroom)
let building = [flat]
let street = ["11": building]
let city = ["Main": street]      //      Тут все есть если что.

print(city["Main"]?["11"]?[0].kitchen.fridge.fruitBox[0])       //      Важно понимать как правильно доставить те или иные данные в зависимости от иеарархии!!! ОЧЕНЬ ВАЖНО!!!


        //      Введение в расширенные типы. Типы которые мы создаем сами для себя!

struct User {
    let name: String
    let age: Int

    func printToConsole () {
        print("Name : \(name), age: \(age)")
    }
}

let ivan = User(name: "Ivan", age: 32)

ivan.printToConsole()


              Точка входа в программу (Явная, Неявная).

  1. Явная - файл main в структуре приложения.

  2. Неявная

@main       //      Атрибут
struct Application {
    static func main() throws {     //      Компилятор начнет выполение с функции main, но необходимо будет переименовать файл main.swift
        print("Hello world")
    }
}

      Точка входа всегда есть! Даже в мобильных приложениях на iOS!


        //      Зачем нужны классы?

/*
 Пример с сотрудником:
    1.  Группировка данных в контейнере.
    2.  Изолирование части программы, которая содержит свои собственные данные и функции.
    3.  Предоставление объектов реального мира.
    4.  Группировка функций.
    5.  Борьба с дублированием кода.
*/

let person = (      //      Кортеж
    height: 180,
    age: 25,
    surname: "Ivanov",
    name: "Ivan",
    patronymic: "Ivanovich",
    salary: [500, 500, 500, 400, 300],
    childrenName: ["Egor", "Pavel", "Petr"]
)

/*
Задачи получить:
    1.  Полное имя.
    2.  Полную сумму всех выплат которые получал сотрудник.
    3.  Средную зарплату сотрудника.
    4.  Добавить зарплату за последний месяц.
    5.  Выводить информацию в консоль.
*/

@main
struct Apptication {
    static func main() throws {
        var person = (      //      Кортеж
            height: 180,
            age: 25,
            surname: "Ivanov",
            name: "Ivan",
            patronymic: "Ivanovich",
            salary: [500, 500, 500, 400, 300],
            childrenName: ["Egor", "Pavel", "Petr"]
        )
        person = add(salary: 800, toPerson: person)
        printToConsole(person: person)
    }
}

typealias Person = (     //      Можно давать имена для типов. Например возьмем наш кортеж Person и присвоим ему имя через оператор TYPEALIAS.
    height: Int,
    age: Int,
    surname: String,
    name: String,
    patronymic: String,
    salary: [Int],
    childrenName: [String]
)

func getFullName(person: Person) -> String {"\(person.surname) \(person.name) \(person.patronymic)"
}

func getFullSalary(person: Person) -> Int {
    var fullSalary = 0
    for sum in person.salary {
        fullSalary += sum
    }
    return fullSalary
}

func getAverageSalary(person: Person) -> Int {
    let fullSalary = getFullSalary(person: person)
    let averageSalary = fullSalary / person.salary.count
    return averageSalary
}

func add(salary: Int, toPerson person: Person) -> Person {
    var person = person
    person.salary.append(salary)
    return person
}

func printToConsole(person: Person) {
    let fullName = getFullName(person: person)
    let fullSalary = getFullSalary(person: person)
    let averageSalary = getAverageSalary(person: person)
    
    print("Полное имя сотрудника: \(fullName)")
    print("Полная сумма выплат: \(fullSalary)")
    print("Средняя зарплата: \(averageSalary)")
}

        //      Перепишем на классах.

@main
struct Apptication {
    static func main() throws {
        let person = Person(
            height: 180,
            age: 25,
            surname: "Ivanov",
            name: "Ivan",
            patronymic: "Ivanovich",
            salary: [500, 500, 500, 400, 300],
            childrenName: ["Egor", "Pavel", "Petr"]
        )
        person.add(salary: 1000)
        person.printToConsole()
    }
}


class Person {
    let height: Int
    let age: Int
    let surname: String
    let name: String
    let patronymic: String
    var salary: [Int]
    let childrenName: [String]
    
    init(
        height: Int,
        age: Int,
        surname: String,
        name: String,
        patronymic: String,
        salary: [Int],
        childrenName: [String]
    ) {
        self.height = height
        self.age = age
        self.surname = surname
        self.name = name
        self.patronymic = patronymic
        self.salary = salary
        self.childrenName = childrenName
    }
    
    func getFullName() -> String {"\(self.surname) \(self.name) \(self.patronymic)"
    }

    func getFullSalary() -> Int {
        var fullSalary = 0
        for sum in self.salary {
            fullSalary += sum
        }
        return fullSalary
    }

    func getAverageSalary() -> Int {
        let fullSalary = self.getFullSalary()
        let averageSalary = fullSalary / self.salary.count
        return averageSalary
    }

    func add(salary: Int) {
        self.salary.append(700)
    }

    func printToConsole() {
        let fullName = self.getFullName()
        let fullSalary = self.getFullSalary()
        let averageSalary = self.getAverageSalary()
        
        print("Полное имя сотрудника: \(fullName)")
        print("Полная сумма выплат: \(fullSalary)")
        print("Средняя зарплата: \(averageSalary)")
    }
}


test



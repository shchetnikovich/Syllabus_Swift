// This is first commit in this syllabus.

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


//MARK:          Операторы условного перехода If Switch (? - тернарник).

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


//MARK:          Опциональные значение.

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


//MARK:          Преобразование типов.

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



//MARK:          Приведение типов. (type casting, кастинг, каст)

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



//MARK:          Функции.


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


//MARK:          ОБЛАСТИ ВИДИМОСТИ


//          Тут глобальная.
func some() {
    //      Тут локальная область видимости.
}

//          Каждая фигруная скобка создает свою область видимости.
//          Могут быть вложены, образуют иерахрию.
//          Внимательно! Обращать внимание на скоупы и на название переменных!


//MARK:          СВОЙСТВА, МЕТОДЫ, ОПЦИОНАЛЬНЫЕ ЦЕПОЧКИ.

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




//MARK:          МАССИВЫ. (ARRAY DICTIONARY SET)


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


//MARK:          ЦИКЛЫ. FOR WHILE

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



//MARK:      ОПЕРАТОР GUARD. Прекращает выполнение блока кода в текущей функции или программе целиком, в случае если не выполнено какое-либо условие.

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



//MARK:      КОРТЕЖИ. TUPLE.
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



//MARK:          СЛОВАРИ DICTIONARY  КЛЮЧ - ЗНАЧЕНИЕ


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




//MARK:          МНОЖЕСТВА SET.   Хранение уникальных значений, производить быстрый поиск на наличия значения и операции над множествами с последующей проверкой.

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



//MARK: ОТЛАДЧИК DEBUGGER.

// Отладка с помощью print().

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


//MARK:      СОЗДАНИЕ STRING И МНОГОСТРОЧНЫЕ ЛИТЕРАЛЫ
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


/*MARK:      Циклы и Массивы. Практика.

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


//MARK: Точка входа в программу (Явная, Неявная).

  // 1. Явная - файл main в структуре приложения.

  // 2. Неявная

@main       //      Атрибут
struct Application {
    static func main() throws {     //      Компилятор начнет выполение с функции main, но необходимо будет переименовать файл main.swift
        print("Hello world")
    }
}

//      Точка входа всегда есть! Даже в мобильных приложениях на iOS!


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

//MARK:      Основы Классов.

@main
struct Application {
    static func main() throws {
        
        let person1 = Person(surname: "Ivanov", name: "Ivan", patronymic: "Ivanovicg")      //      Инициализация класса, надо добавить () в конце. Можно также сказать - создаём экземепляр класса.
        print(person1.getFullName())     //      Обращаемся к нашему экземпляру класса.
        
        let person2 = Person(surname: "Petrov", name: "Petr", patronymic: "Petrovich")      //      Можно создать несколько экземпляров одного класса.
        print(person2.surname, person2.name, person2.patronymic!)
    }
}

        //      Свойства класса.

class Person {      //      Имена классов принято начинать с большой буквы и использовать CamelCase
    
    let name: String
    let surname: String      //      Переменные внутри класса называются свойства.
    let patronymic: String?
    
    init(surname: String, name: String, patronymic: String) {
        //      Конструктор класса. Внутри класса можно сделать специальную функцию, конструктор класса. Она вызывается чтобы получить экземпляр данного класса, один раз и в ней можно присвоить свойствам значения. Первым делом выделяется память под наш консткурктор. Создается объект в памяти. В этот момент, селф будет ссылаться на ту область памяти в которой хранится наш экземпляр объекта. Конструктор заканчивает работу и возвращает адрес в памяти.
        self.surname = surname    //      Значения по умолчанию.
        self.name = name
        self.patronymic = patronymic
    }
    
    func getFullName() -> String {      //      Функция внутри класса называется методом.
        return "\(surname) \(name) \(self.patronymic ?? "")"      //      Self можно не писать, в одной области видимости.
    }
    
}


/* MARK:     Console Graphics Editor.
 
   1. The program must contain an array of graphic shapes.
   2. The program should output a text description of all shapes in the array to the console.
   3. The format of the text description - "The name of the figure, color, area of the X / Y coordinates, additional information about the figures.
   4. Additional information should describe mathematical parameters (for example, for a triangle, the length of each side, and for a circle, the radius.
 
 */


import Darwin

class Shape {
    
    let color: String
    let x: Int
    let y: Int
    
    init(color: String, x: Int, y: Int) {
        self.color = color
        self.x = x
        self.y = y
    }
    
    func name() -> String {
        "Unknown"
    }
    
    func paint() -> String {
        let shapeDetails = makeShapeDetails()
        let area = makeArea()
        return """
        Shape: \(name())
        Square: \(area)
        Color: \(color)
        Location:
            x: \(x)
            y: \(y)
        Properties:
        \(shapeDetails)
        """
    }
    
    func makeShapeDetails() -> String {
        "Unknown"
    }
    
    func makeArea() -> String {
        "Unknown"
    }
}

class Circle: Shape {
    let radius: Double
    
    init(color: String, x: Int, y: Int, radius: Double) {
        self.radius = radius
        super.init(color: color, x: x, y: y)
    }
    
    override func makeShapeDetails() -> String {
        """
            Radius: \(radius)
        """
    }
    
    override func name() -> String {
        "Circle"
    }
    
    override func makeArea() -> String {
        let area = Double.pi * radius * radius
        return String(area)
    }
}

class Triangle: Shape {
    
    let sideA: Double
    let sideB: Double
    let sideC: Double
    
    init(color: String, x: Int, y: Int, sideA: Double, sideB: Double, sideC: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
        super.init(color: color, x: x, y: y)
    }
    
    override func makeShapeDetails() -> String {
        """
            Side A: \(sideA)
            Side B: \(sideB)
            Side C: \(sideC)
        """
    }
    
    override func name() -> String {
        "Triangle"
    }
    
    override func makeArea() -> String {
        let p = (sideA + sideB + sideC) / 2
        let area = sqrt(p * (p - sideA) * (p - sideB) * (p - sideC))
        return String(area)
    }
}

class Square: Shape {
    
    let sideA: Double
    let sideB: Double
    
    init(color: String, x: Int, y: Int, sideA: Double, sideB: Double) {
        self.sideA = sideA
        self.sideB = sideB
        super.init(color: color, x: x, y: y)
    }
    
    override func makeShapeDetails() -> String {
        """
            Side A: \(sideA)
            Side B: \(sideB)
        """
    }
    
    override func name() -> String {
        "Square"
    }
    
    override  func makeArea() -> String {
        let area = sideA * sideB
        return String(area)
    }
}

@main
struct Application {
    static func main() throws {
        let shapes: [Shape] = [
            Circle(color: "Red", x: 0, y: 0, radius: 45),
            Square(color: "Blue", x: 30, y: 10, sideA: 5, sideB: 30),
            Triangle(color: "Yellow ", x: 50, y: 70, sideA: 10, sideB: 5, sideC: 5)
        ]
        for shape in shapes {
            print(shape.paint())
        }
    }
}

/*MARK:            ОСНОВЫ НАСЛЕДОВАНИЯ КЛАССОВ     Как работает наследование?
 
    Для того чтобы наследовать класс от другого класса, необходимо при объявлении класса после его имени указать доветочие и имя родительского класса.
 
    Класс Б можно считать:
 
        - Потомком класса А
        - Наследником класса А
        - Дочерним классом А
 
    Класс А можно назвать:
 
        - Родительским классом
        - Родителем
 
    Наследование механизм языка который позволяет создать класс частично повторяющий другой класс.
 
    Зачем нужно наследование?
 
    1.   Создание более точных сущностей
    2.   Для предоставления базовой функциональности, которую можно дополнить под конкрентный случай. Например UIViewController рисует на экране черный прямоуголник. Много полезного кода для работы с экраном, анимациями, жестами и тд

    Наследование - архитектурный инструмент, позволяет сделать более удобной работу с кодом. В iOS разработке часто используют наследование для работы со стандартными библиотеками типа UIKit.
 
    Наследование свойств.
 
    Наследование методов.
 
    Наследование конструкторов. В дочернем классе может не быть конструктора, если в дочернем нету свойств которым необходимо присвоить значения. При этом обязательно использовать конструктор родительского класса.
 
    Иерархия наследования. Класс Б наследуется от класса А2, тот в свою очередь наследуется от А1. У класса может быть только 1 родитель.
 
*/

class A1 {
    let first: String
    
    init(first: String) {
        self.first = first
    }
    
    func getValue() -> Int {
        return 1
    }
}

class A2: A1 {
    
}

class B: A2 {
    let second: String
    
    init(first: String, second: String) {
        self.second = second
        super.init(first: first)        //      Вызываем конструктор родителя.
    }
    override func getValue() -> Int {
        return super.getValue() + 1
    }
    
    func getNewValue() -> Int {
        return getValue() + 2       //      Можем прям тут возвращать наследованные методы от родителя.
    }
    
    func getSuperValue() -> [Int] {
        return [
            getValue(),
            super.getValue(),
            getValue() + super.getValue()
        ]
    }
}


@main
struct Application {
    static func main() throws {
        let b = B(first: "Hello", second: "World")
        print(b.first, b.second)
        print(b.getValue(), b.getNewValue())
        print(b.getSuperValue())
    }
}

/*MARK: СВОЙСТВА КЛАССОВ
 
    Свойства:
 
    - Хранимые (основные для класса, хранят какие то данные)
    - Вычисляемые (получают данные, вычисляют, можно заменить на методы, служат в основном для визуального украшения кода)
 
    Хранимые
 
 Хранимые константы - это константные свойства, которые не меняются. Необходимо объявлять их значения сразу или в конструкторе.
 
 Хранимые переменные - их значение может меняться, задавать значение нужно при объявлении. Оно может быть опциональным и инициализировано как nil.
 
 Ленивые хранимые свойства, обычные хранимые свойства всегда обязанны иметь значение до того как объект будет создан, даже если свойство опциональное и хранит nil.
 Исключением являются ленивые свойства классов LAZY. Ленивое свойство обязано быть переменной. Несмотря на то что мы указали значение свойству, появится оно лишь в момент первого обращения к нему.
 Как правило Ленивые свойства используют при хранении большого объема данных в памяти, при этом не ясно, будет ли он использован объектом.
 
    Вычисляемые
 
Вычисляемые свойства ничего не хранят, по сути это методы, которые можно вызвать, но которые выглядят как свойства.
Вычисляемые свойства всегда помечается как переменная var, у него указывается тип, открываются фигурные скобки и пишется два блока get{} и set{}
 
GET{} можно рассматривать как функцию, которая вызывается при чтении информации из свойства и которая обязана вернуть значение типа свойства.
SET{} можно рассматривать как функцию, которая вызывается при присвоении свойству нового значения, при этом внутри этого блока есть константа newValue, содержащая значение присвоенное в свойство
 
Существуют вычисляемые свойства, которые можно только читать READ ONLY. Они не содержат блока SET. Для краткости блок GET стОит! пропускать.
 
    Наблюдатели свойств
 
 Полезно отслеживать факт изменения значения в свойстве, существуют специальные функции, которые вызываются сразу после свойства или непосредственно перед изменением.
 Наблюдатели могут быть только у хранимых свойств у наследуемых хранимых свойств и наследуемых вычисляемых свойств.
 Наблюдатель определяется в фигурных скобках после свойств и начинается с ключевых слов willSet didSet. WillSet до установки didSet после устаноки.
 Важно понимать!, что наблюдатели не могут повлиять на факт присвоения значения, они просто его отслеживают.
 
 
*/


class A {
    
    let first = "Hello "
    let second: Int
    var third: String
    var fourth: String?
    lazy var fifth = "Lazy "
    
    init() {
        second = 1
        self.third = "World "
    }
}

class Person {
    var age: Int
    var name: String
    var surname: String
        
    var stringAge: String {     //      По сути синтаксический сахар, никто не запрещает это сделать с помощью методов ниже.
        get {
            return String(age)
        }
        set {
            age = Int(newValue) ?? 0
        }
    }
    
    var fullName: String {      //      Свойство READ ONLY. Для краткости блок GET можно пропускать.
        return "\(name) \(surname)"
    }
    
    var childrenName: String {      //      Функция willSet вызовется непосредственно в момент перед тем как свойство получит новое значение.
        willSet {
            print(newValue)
        }
        didSet {            //      Функция didSet вызовется после того как непосредственно будет установлено значение в свойстве.
            print("Name was changed. Old name is \(oldValue). New name is \(childrenName)")
        }
    }
    
    init(
        age: Int,
        name: String,
        surname: String,
        childrenName: String
    ) {
        self.age = age
        self.name = name
        self.surname = surname
        self.childrenName = childrenName
    }
    
    func ageAsString() -> String {
        return String(age)
    }
    
    func setAge(_ age: String) {
        self.age = Int(age) ?? 0
    }
}

@main
struct Application {
    static func main() throws {
        let a = A()
        let person = Person(age: 30, name: "Petr", surname: "Ivanov", childrenName: "Oleg")
        a.fourth = "Optional "
        print(a.first + a.third + (a.fourth ?? "") + a.fifth)
        person.stringAge = "33"
        print(person.age)
        print(person.fullName)
        person.childrenName = "Pavel"
    }
}

/*MARK: ИНИЦИАЛИЗАЦИЯ И ДЕИНИЦИАЛИЗАЦИЯ КЛАССОВ
 
 При создании переменной выделяется память, в которую потом присвается значение. С классами все несколько сложнее:
    1. При созданнии класса выделяется память под указатель на ту область памяти, где будет храниться класс.
    2. Классы имеют свойства, свойства могут быть тоже классами, поэтому процесс создания экземпляра класса сложный и комплексный.
    
 Создать экземпляр класса можно только вызвав конструктор. Этапы создания экземпляра:
    1. Происходит вызов конструктора.
    2. Выделяется память под объект.
    3. Выполняется код из конструктора который должен присвоить всем свойствам значения.
       На этот момент константу self можно использовать только для присвоения свойствам значений.
    4. Если класс имеет родителя, то вызываеся конструктор родителя.
    5. Объект считается инициализированным, в конструкторе можно выполнять произвольный код, который в том числе использует self для доступа к свойствам и методам.
    6. Конструктор возвращет созданный объект.
 
 Конструктор по умолчанию - не делает никаких пользовательских действий, просто создает объект и возвращает его.
 
 Явный конструктор обязательный, если в классе объявлены свойства который не имеют значений по умолчанию.

 У класса может быть несколько конструкторов, для инициализации класса разными способами.
 
 Опциональный конструктор, поможет в ситуациях, когда становится понятно, что объект класса создать нельзя. init?
 
 При наследовании можно пользоваться констрктором родителя. Также при необходимости конструктор можно переопределять, при этом нужно вызвать родительский контруктор.
 
 Также родительский конструктор можно заменить.  У дочернего класса можно поменять конструктор, тогда родительский конструктор пропадёт.
 
 Обязательный конструктор. Required - он переопределяет, как оверрайд только обязательный! Этот конструктор всегда останется в дочерних классах.
 
 Вспомогательный конструктор. (Convenience) Бывает что в основном конструкторе происходит важная инициализация, при этом хочется сделать несколько дополнительных
 конструкторов, которые бы использовались просто для удобства передачи аргументов. Обязаны вызвать self.init()
 
 Деинициализация - в момент, когда класс уничтожается, у него вызывается метод deinit, у него нету аргументов, нельзя вызвать super, только 1 у класса.
 
*/

class A{
    let sideA: Int
    let sideB: Int
    
    init(sideA: Int, sideB: Int) {
        self.sideA = sideA
        self.sideB = sideB
    }
    
}

class B {
    let b: Int
    
    init(b: Int) {
        self.b = b
    }
}

class Square {
    let sideA: Int
    let sideB: Int
    
    init?(sideA: Int, sideB: Int) {     //      Опциональный конструктор (failable initializer)
        guard sideA > 0 && sideB > 0 else { return nil }
        self.sideA = sideA
        self.sideB = sideB
    }
    
    init(side: Int) {
        self.sideA = side
        self.sideB = side
    }
}

class C: A {}       //      Класс С берет конструктор родителя А.

class D: A{
    override init(sideA: Int, sideB: Int) {
        super.init(sideA: sideA * 2, sideB: sideB * 2)      //      Пример переопределения родительского конструктора.
    }
}

class F {
    let a: Int
    
    init(a: Int) {
        self.a = a
    }
    
    deinit {            //      Удаление объекта из памята.
        print("Object is destroyed")
    }
}



@main
struct Application {
    static func main() throws {
        let c = C(sideA: 10, sideB: 10)
        let b = B(b: 5)
        let rectangle = Square(sideA: 10, sideB: 15)        //      Пример нескольких конструкторов.
        let square = Square(side: 10)
        let denit = F(a: 1)
    }
}


/*MARK: САБСКРИПТЫ В КЛАССАХ
 
 Позволяют добавлять доступ к методам класса через квадратные скобки (как в массиве или словаре).
 
 Это особые функции внутри класса, которые не имеют имени и вызываются через квадратные скобки.
 
 Нельзя создать одновременно 2 сабскрипта с одиннаковыми сигнатурами:
    -   Имени нету у сабскрипта
    -   Количество аргументов
    -   Типа аргументов
    -   Возвращаемый тип сабсрипта
 
 */

class Field {
    let fieldSize: Int
    var field = [[String]]()
    
    init(fieldSize: Int) {
        self.fieldSize = fieldSize
        makeField()
    }
    
    func makeField() {
        field = [[String]]()
        for _ in 0..<fieldSize {
            var row = [String]()
            for _ in 0..<fieldSize {
                row.append(" ")
            }
            field.append(row)
        }
    }
    
    func getSymbol(atRow row: Int, atColumn column: Int) -> String? {       //      Метод позволяет получить символ из ячейки.
        guard row < fieldSize, column < fieldSize else { return nil }

        return field[row][column]
    }

    func updateSymbol(symbol: String, atRow row: Int, atColumn column: Int) {       //      Добавляет символ в ячейку.
        guard
            row < fieldSize,
            column < fieldSize,
            field[row][column]  ==  " "
        else { return }

        field[row][column] = symbol
    }
    
    subscript(row: Int, column: Int) -> String? {
        get {
            guard row < fieldSize, column < fieldSize else { return nil }
            
            return field[row][column]
        }
        
        set(symbol) {
            guard
                let symbol = symbol,
                row < fieldSize,
                column < fieldSize,
                field[row][column]  ==  " "
            else { return }
            
            field[row][column] = symbol
        }
    }
}


@main
struct Application {
    static func main() throws {
    let field = Field(fieldSize: 3)
        field.makeField()
        field.field[0][0] = "x"     //      Старый, неудобный вариант добавления символа в ячейку.
        
        field.getSymbol(atRow: 1, atColumn: 1)      //      Новый вариант на методах.
        field.updateSymbol(symbol: "O", atRow: 2, atColumn: 2)
        
        field[0, 0] = "0"       //      Добавляем значение через сабскрипт в ячейку.
        print(field[0, 0])
    }
}


/*MARK: КОНТРОЛЬ ДОСТУПА (PRIVATE?!)   Как ограничить доступ к функциям, методам и пр?         *** ВАЖНО ****
 
 Какие уровни доступа бывают "внутри"?
 
    -   private - файла или класса.
    -   fileprivate - файла.
    -   internal - таргета (все сущности без явного контроля априорри интёрнал!)
    -   public - везде!
    -   open - + наследнование! (работает только для классов)
 
 Когда можно использовать уровни доступа?
 
    -   Функциям и переменным, которые находятся в глобальной видимости.
    -   Классам, структурам, протоколам, перечислениям везде!
    -   Свойствам, методам, сабскриптам, конструкторам классов и структур.
 
 Когда использовать контроль доступа?
 
    ВСЕГДА ДЕЛАЕМ БОЛЕЕ СТРОГО! МАКСИМАЛЬНО! Всегда надо думать давая сущности доступ к таргету!
 
 Как планировать контроль доступа?
 
    Всегда можно поменять private на internal!
 
 Доступ к классу не тоже самое, что доступ к его членам.
 
 Свойства и переменные могут иметь разный уровень доступа.  (SET)
 
    Модификатор SET на запись должен быть строже, чем на чтение!
 
    -   Ключевое слово с уровнем доступа влияет на чтение переменной.
    -   Ключевое слово с круглыми скобками на запись.
    -   Уровень доступа на запись всегда должен быть строже чем на запись. Нельзя делать свойсвто, которое можно изменять из всего приложения, но читать только из файла.
    -   Если не указать уровень доступа без круглых скобок, то будет использоваться internal.

 */

class Square {
    
    private let sideA: Int
    private(set) public var sideB: Int      //      На записиь приват, на чтение паблик!!! ВАЖНО! УРОВЕНЬ ДОСТУПА!!!
    
    init(
        sideA: Int,
        sideB: Int
    ) {
        self.sideA = sideA
        self.sideB = sideB
    }
    
    func makeArea() -> Int {
        sideA * sideB
    }
}

@main
struct Application {
    static func main() throws {
        
//        print(someTestConst)        //      Ошибка PRIVATE (Представим что у нас создан новый файл внутри нашего "апликейшена")
//        someTestFunc()
        
        let square = Square(sideA: 10, sideB: 30)
        let area = square.makeArea()
        print(area)
    }
}

/*MARK:    МЕТОДЫ И СВОЙСТВА САМИХ КЛАССОВ (не путать с свойствами объектов)
 
 Класс это тип, мы можем создавать значение этого типа - объект.
 
    Зачем нужны свойства и методы?
 
 Хороший пример число PI, это математическая константа неизменная всегда и везде (с типом double).

 Можно поменять Static на Class но это редко используется, антипаттерн.
 
    ВАЖНО РАЗДЕЛЯТЬ КЛАСС И ОБЪЕКТ!!!
 
 Из статических свойств мы к свойствам объекта никогда физически не получим доступ.

 */

class Square {
    private(set) var sideA: Int
    private(set) public var sideB: Int
    
    static let zeroSide = 0     //      Статическое свойство.
    
    init(
        sideA: Int,
        sideB: Int
    ) {
        self.sideA = sideA
        self.sideB = sideB
    }
    
    convenience init() {                //      Другой вариант вариации абстракции с нулевым свойством
        self.init(sideA: 0, sideB: 0)
    }
    
    func area() -> Int {
        sideA * sideB
    }
    
    func test() {
        print(Self.zeroSide)        //      В данном случае селф SELF - указывает на класс Self == Square.zeroSide
    }
    
    static func makeZeroSquare() -> Square {        //      Статический метод.
        return Square(sideA: self.zeroSide, sideB: self.zeroSide)
    }
}

@main
struct Application {
    static func main() throws {
        let a = Square(sideA: 1, sideB: 5)
        
        Square.zeroSide                                 //      zeroSide makeZeroSquare принадлежат самому классу, а не конкретному объекту. Обращение идет к самому классу.
        Square.makeZeroSquare()
        
        let zeroSquare = Square(sideA: Square.zeroSide, sideB: Square.zeroSide)     //      Абстракция с объектом с определённым свойством.
        
        let convinienceSquare = Square()        //      Получаем экземпляр объекта с нулевым значением по улучшенному конструктору convenience. Легко запутаться.
        
        let square = Square.makeZeroSquare()
        
        print(square)
    }
}

/* MARK: СТРУКТУРЫ   STRUCT
 
 Структуры как и классы такие же "контейнеры" которые имеют свои свойства методы конструкторы. Структуры отчасти копия классов.
 
 Технически структуры устроены по другому в отличии от классов, они по разному работают с памятью.
 
 Структуры более простые и нацелены на объединение данных в контейнер и предоставления методов для работы с этими данными.
 
 Для чего нам может пригодиться расширенные типы - классы, структуры:
 
    -   Именнованные контейнеры для других данных.
    -   Изолированная часть программы, которая содержит свои собстенные данные и функции.
    -   Предоставление объектов реального мира.
    -   Группировка функций.
    -   Борьба с дублированнием кода.
 
 Ключевые особенности КЛАССОВ:
    -   Изолирования части программы
    -   Предоставление активных объектов реального мира, которые совершают работу (камера телефона, микрофон которые записывает звук)
 
 Ключевые особенности СТРУКТУР:
    -   Именованные контейнеры для данных
    -   Предоставление пассивых объектов реального мира, которые не совершают работы. (фотография, звуковой файл, кружка, конфета)
 
 Структуры почти как классы:
    -   Они имеют свойства также как и классы.
    -   Методы почти как в классах.
    -   Конструкторы почти как в классах.
    -   Экземпляр структуры так же как экземпляр класса можно получить только в результате вызова конструктора.
    -   Неляза создать экземпляр структуры не просвоив им значения.
    -   В методах также доступны свойства и self.
    -   Они имеют сабскрипты.
    -   В них можно управлять контрелем доступа.
    -   Они имеют статические методы и свойства.
 
 Отличия от классов:
    -   Методы не могут просто так менять свойства структуры, даже если они переменные.
    -   Они не имеют вспомогательных конструкторов.
    -   В них нет метода deinit
    -   Они не поддерживают наследования
    -   Конструктор по умолчанию умеет инициализировать все свойства.
    -   При выводе в консоль экземпляра структуры, автоматически выводятся значения его полей.
 
 MUTATING - помечаем функции в структурах для того чтобы можно было менять значения свойств структуры.
 
 */

struct Square {
    private(set) var sideA: Int
    private(set) public var sideB: Int
    static let zeroSide = 0
    
    init(
        sideA: Int,
        sideB: Int
    ) {
        self.sideA = sideA
        self.sideB = sideB
    }
    
    func area() -> Int {
        sideA * sideB
    }
    
    static func makeZeroSquare() -> Square {
        return Square(sideA: self.zeroSide, sideB: self.zeroSide)
    }
}

struct A {              //      Конструктор по умолчанию, можно без init()
    let name: String
    var age: Int
    
    mutating func incrementAge() {      //      Mutating позволяет менять свойства.
        age += 1
    }
    
    func printAge() {
        print(age)
    }
}

@main
struct Application {
    static func main() throws {
        var a = A(name: "Petr", age: 50)
        
        a.incrementAge()
        a.printAge()
    }
}


/* MARK: КЛЮЧЕВЫЕ ОТЛИЧИЯ СТРУКТУР ОТ КЛАССОВ
 
    -   Классы поддерживают наследование, в отличии от структур.
    -   Структуры имеют расширенный конструктор по умолчанию.
 
    -   Классы хранятся в куче, а структуры в стеке.
    -   Струкуры имеют статическую диспетчеризацию, а классы динамическую.
 
    ГЛАВНОЕ - семантика копированния объектов структур и классов.
 
 Семантика значения - Value Semantics присуща структурам, которые мы создаем сами и всем базовым типам (числам, строкам, массивам, кортежам, множествам и словорям).
    1.  Переменная которой присвоен объект структуры содержит непосредственно сам объект структуры, значение.
    2.  Когда мы присваиваем значение структуры в переменную значение копируется.

 Семантика ссылок - Reference Semantics присуща классам
    1.  Переменная которой присвоен объект класса содержит не сам объект, а ссылку на то место где в памяти находится объект.
    2.  Когда мы присваиваем значение класса в переменную копируется ссылка на объект класса, при этом сам объект класса остаётся в единственном экземпляре.
    3.  Создать новый экземпляр класса можно, через вызов конструктора.
 
 Как определить на какие объекты ссылаются переменные?
 В деббагере будет всегда указан адрес.
 
 Как скоировать объект класса?
 Скопировать объект класса нельзя, можно создать новый и присвоить такие же значения его свойствам.
 
 Вложенные типы данных смотри пример с Passport Person
 
 Семантика Value \ Reference ОЧЕНЬ ВАЖНА при создании новых переменных или констант.
    -   При передаче значений в функцию или метод
    -   При возвращении значения из фукнции или метода
    -   При добавлении значения в коллекцию (массив, словарь, множество)
    -   При получении значения из коллекции (массив, словарь, множество)
    -   При добавлении значения в кортеж, структуру или класс.
 
 */

struct A {
    var name: String
}

class B {
    var name: String

    init(
        name: String
    ) {
        self.name = name
    }
    
    func copy() -> B {          //      Можно написать метод который будет возвращать как бы "копию".
        B(name: name)
    }
}

class Passport {
    var number: String
    
    init(
        number: String
    ) {
        self.number = number
    }
}

struct Person {
    var name: String
    var passport: Passport      //      Свойство с типом Паспорт из вышестоящего класса.
    
    init(
        name: String,
        passport: Passport
    ) {
        self.name = name
        self.passport = passport
    }
}

@main
struct Application {
    static func main() throws {
        
        // 1 struct
        var aStruct = A(name: "Ivan")
        // 2 struct
        var bStruct = aStruct       //      Буквально копирует объект "а" в "b" (семантика значения или value type)
        // 3 struct
        var cStruct = bStruct
        // 4 struct
        bStruct.name = "Petr"
        // 5 struct
        aStruct.name = "Pavel"
        // 6 struct
        var dStruct = bStruct
        print(aStruct, bStruct, cStruct, dStruct)       //      A(name: "Pavel") A(name: "Petr") A(name: "Ivan") A(name: "Petr")
        
        // 1 class
        var aClass = B(name: "Ivan")
        // 2 class
        var bClass = aClass     //      Просто присваивает ссылку на старый объект.
        // 3 class
        var cClass = B(name: "Pavel")       //      Создаем новый экземпляр класса через конструктор.
        // 4 class
        bClass.name = "Petr"
        // 5 class
        aClass.name = "Oleg"
        // 6 class
        var dClass = bClass
        // 7 class
        
        var eCopyClass = dClass.copy()      //      Создали копию класса dClass через наш метод
        
        print(aClass.name, bClass.name, cClass.name, dClass.name, eCopyClass.name)       //      Oleg Oleg Pavel Oleg Oleg
        
        var a = Person(
            name: "Ivan",
            passport: Passport(number: "4000 010000")
        )
        var b = a
        a.name = "Petr"
        a.passport.number = "4444 011111"
        
        print(a.name, a.passport.number)        //      Petr 4444 011111
        print(b.name, b.passport.number)        //      Ivan 4444 011111        Номера одиннаковые, т.к. скопирована была ссылка на объект класса Passport
        
        var aArray = A(name: "Ivan")
        changeName(aArray)
        var bArray = [aArray, aArray, aArray, aArray]
        
        bArray[0].name = "Pavel"
        bArray[1].name = "Ignat"
        bArray[2].name = "Igor"
        bArray[3].name = "Andrey"
        
        print(aArray)
        print(bArray)
    }
}

func changeName(_ a: A) {
    var a = a
    a.name = "Anton"
}

/* MARK: ОСНОВЫ УПРАВЛЕНИЯ ПАМЯТЬЮ
 
 Когда удалять объект и как не допускать "замусоривание" памяти ненужными объектами?
    Объект нам не нужен! Как понять что он нам не нужен? Если есть переменные, которые хранят объект, значит объект на нужен. Если нету переменных значит и объект не требуется, можно удалять!
 
 Переменная живёт, пока существует область видимости в которой она была создана.
 
    Управление памятью типов с семантикой значения.
        Одна переменная равна одному значению, при удалении переменной удаляется и значение.
 
    Управление памятью типов с семантикой ссылок.
        Множество переменных равны одному значению. Значение удаляется из памяти только при удалении последней переменной.
        
 Автоматический Счетчик ссылок (ARC - Automatic Reference Counting)
    Внутри каждого объекта типа класса хранится счетчик ссылок - целое число. Когда появляется новая ссылка на этот объект, счетчик ссылок увеличивается на 1.
 
 */

class A {
    var age: Int
    
    init(
        age: Int
    ) {
        self.age = age
    }
    
    deinit {
        print("Объект уничтожен")
    }
}


let v = 4       //      Глобальная область видимости, константа будет создана при запуске программы и удалиться только при завершении программы.

@main
struct Application {
    static func main() throws {
        
//        for i in 0...15 {                       //      В начале каждой итерации создаётся новая константа i result
//            let result = summ(a: i, b: v)
//        }                                       //      В конце каждой итерации константы i result будут удаляться
            
        arcTest()
        print("Конец программы")
    }
    
    static func arcTest() {     //      Функция аркТест тестируем ARC
        // Первая константа, счетчик ссылок равен 1
        let a = A(age: 0)
        for i in 0...15 {
            //  Вторая константа будет появляться каждую итерацию, счетчик ссылок будет равен 2
            let localA = a
            summArc(a: i, b: localA)
            //  В конце итерации будет удаляться константа localA, счетчик ссылок будет уменьшаться до 1
        }
        // В конце функции удалится константа a, счетчик ссылок будет равен 0, объект удалиться из памяти
    }
}

func summArc(a: Int, b: A) {
    b.age += a
}

func summ(a: Int, b: Int) -> Int {      //      При каждом вызове функции будут создаваться новые константы a b result
    let result = a + b
    return result
}                                       //      В конце каждого вызова функции константы a b result будут удаляться

/* MARK: ЦИКЛЫ УДЕРЖАНИЯ     RETAIN CYCLE
 
 Создадим ситуацию, когда счетчик ссылок не справляется.
 
 Сильные, слабые и бесхозные ссылки STRONG WEAK UNOWNED
 
 Модификаторы, которыми можно помечать переменные, константы и свойства. Они позволяют изменить влияние ссылок на счетчик объектов.
 Если быть точным, на ARC влияют только сильные Strong ссылки, а слабые или безхозные нет.
 Можно создать 100 слабых ссылок на объект, но его счЁтчик ссылок не сдвинится с места. Эти ссылки нужны для обращения к объекту, но не удерживания в памяти.
 
 WEAK - Безопасная слабая ссылка, обязательно только у VARIABLE переменных. Если вдруг объект пропадет из памяти то значение слабой сслыки автоматически станет nil.
 
 UNOWNED - ОПАСНАЯ ССЫЛКА, обычно никог1да не используют. Или используют, чтобы избавиться от опциональных типов.
 
 КОНЦЕПЦИЯ УДЕРЖАНИЯ ОБЪЕКТА В ПАМЯТИ
 
    Разработчики не думают о значении счетчика ссылок, ведь следить за ним нет никакого смысла. Нужно отталкиваться от удерживать объект в памяти или нет?
    Если в каком-то место необходимо чтобы объект в памяти существовал, то используется сильная ссылка, чтобы удержать объект.
    А если нужен просто доступ к объекту, если он существует, но его нет то и доступ не нужен, то считает что в этом месте объект не стоит удерживать.
 
    Удерживают объект сильные ссылки, потому что пока они существуют объект не будет удален. А слабые не удерживают.
 
 */

class Person {
    var age: Int
    var passport: Passport?
    
    init(
        age: Int,
        passport: Passport? = nil
    ) {
        self.age = age
    }
    
    deinit {
        print("Объект Person уничтожен")
    }
}

class Passport {
    var number: String
    weak var owner: Person?
    
    init(
        number: String,
        owner: Person? = nil
    ) {
        self.number = number
        self.owner = owner
    }
    
    deinit {
        print("Объект Passport уничтожен")
    }
}

@main
struct Application {
    static func main() throws {
        arcTest()
        print("Конец программы")
    }
    
    static func arcTest() {
        let person = Person(age: 13)
        let passport = Passport(number: "00 11 223344")
        
        person.passport = passport      //      Цикл удержания (бесконечный цикл)
        passport.owner = person
        
        passport.owner = nil        //      Разрываем цикл. Свойство перестало ссылаться на passport, его счетчик уменьшился до 0, он удалился из памяти и его свойство перестало ссылаться на person, он тоже удалился из памяти
    }
}

/* MARK:      ПЕРЕЧИСЛЕНИЯ ENUM

    Можно присваивать и сравнивать!
 
    Ассоциированные значения (расширенные перечисления) - позволяют писать очень выразительный и очень защищенный от ошибок код.
        
    П. полезны чтобы создать ограниченное количество именованных вариантов
    П. имеют семантику значения
    П. не могут иметь хранимых свойств
    П. могут быть связаны с каким то базовым типом
    Варианты перечисления могут хранить какие то данные.
 
 */


enum NewWorkingMode {
    case office(String, String)
    case remote(String)
    case mixed([Int])
}

enum WorkingMode: String {
    case office = "hello"
    case remote
    case mixed
    
    init?(_ a: Int) {       //      Фэйлебл конструктор так удобно получать данные с бэка и сразу конвертировать строки в приятные енамы!
        switch a {
        case 0:
            self = .office
        case 1:
            self = .remote
        case 2:
            self = .mixed
        default:
            return nil
        }
    }
    
    var aInt: Int {          //        Вычисляемое свойство
        switch self {
        case .office:
            return 0
        case .remote:
            return 1
        case .mixed:
            return 2
        }
    }
    
    func bInt() -> Int {        //      Метод для получения числа из перечисления
        switch self {
        case .office:
            return 0
        case .remote:
            return 1
        case .mixed:
            return 2
        }
    }
    
}

struct NewPerson {
    let workingMode: NewWorkingMode
}

struct Person {
    let workingMode: WorkingMode
}

@main
struct Application {
    static func main() throws {
        let person = Person(workingMode: .remote)
        
        let a: WorkingMode = .remote        //      Удобный синтаксис присваивания
        
        let e = Person(workingMode: .mixed)
        
        sum(a: .office)
        
        let b = WorkingMode(2)

        let f = b?.bInt()
        
//        let c = WorkingMode(rawValue:)        //      Стандартный конструктор
        
        let d = WorkingMode.mixed.rawValue
        
        print(WorkingMode.office.rawValue)
        print(WorkingMode.remote.rawValue)
        print(WorkingMode.mixed.rawValue)
        
        let newPerson0 = NewPerson(workingMode: .office("8:00", "17:00"))
        let newPerson1 = NewPerson(workingMode: .remote("ул. Победы д. 1, кв. 1"))
        let newPerson2 = NewPerson(workingMode: .mixed([1, 3, 5]))
        
        switch newPerson0.workingMode {
        case .office(let startTime, _):
            print(startTime)
        case .remote(let address):
            print(address)
        case .mixed(let dates):
            print(dates)
            
        }
        
        switch person.workingMode {     //      Дефолт в свите с енамом не пишем!
        case .office:
            print("Офисный режим работы")
        case .remote:
            print("Удаленный режим работы")
        case .mixed:
            print("Смешанный режим работы")
        }
    }
}

func sum(a: WorkingMode) {
    
}

/* MARK: УНИВЕРСАЛЬНЫЕ ШАБЛОНЫ (ДЖЕНЕРИКИ)
 
    Специальные конструкции, которые помогают писать код, который не зависит от конкретного типа.
 
    Дженериками могут быть структуры, классы, перечисления, функции, методы, замыкания.
 
        Тип структуры дженерика определяется каждый раз при его создании.
 
        В функнциях типы указываются каждый раз для его вызова.
    
    Дженерики очень полезные, позволяют писать код который может работать с разными типами, но при использовании этого кода тип будет точно известен.
    Как правило, дженерики используются при разработке библиотек или библиотечного кода.
 
    У дженериков есть области видимости.
 
 */

struct Grid<Data> {
    private var data: [[Data?]]
    
    init(size: Int) {
        data = []
        for _ in (0..<size) {
            var rowData = [Data?]()
            for _ in (0..<size) {
                rowData.append(nil)
            }
            data.append(rowData)
        }
    }
    
    subscript(row: Int, column: Int) -> Data? {
        get {
            guard
                row >= 0 && row < data.count,
                column >= 0 && column < data.count
            else { return nil }
            return data[row][column]
        }
        set {
            guard
                row >= 0 && row < data.count,
                column >= 0 && column < data.count
            else { return }
            data[row][column] = newValue
        }
    }
}

struct Person<LeftPocket, RightPocket, PantsPocket> {
    var leftPocket: LeftPocket?
    var rightPocket: RightPocket?
    var pantsPocket: PantsPocket?
    
    init(leftPocket: LeftPocket, rightPocket: RightPocket, pantsPocket: PantsPocket) {
        self.age = age
        self.passport = passport
        self.leftPocket = leftPocket
        self.rightPocket = rightPocket
        self.pantsPocket = pantsPocket
    }
    
    func pow() -> Int? {
        age * age
    }
}


func printSome<A, B>(a: A, b: B) {
    print(a, b)
}


struct A<T> {
    
    func somePrint<M>(a: T, b: M) {
        print(a, b)
    }
}

func sum<T: Numeric>(a: T, b: T) -> T {
    a + b
}

func sum(a: Double, b: Double) -> Double {
    a + b
}

@main
struct Application {
    static func main() throws {
        
        let array: Array<Int> = Array<Int>.init(arrayLiteral: 1, 3, 4, 5)
        let arrayString: Array<String> = Array<String>.init(arrayLiteral: "a", "b", "c", "d")

        var gridString: Grid<String> = Grid<String>(size: 2)
        gridString[1, 1] = "hello"
        (gridString[1, 1] ?? "") + "world"
        print(gridString[1, 1])

        var gridInt = Grid<Int>(size: 20)
        gridInt[1, 1] = 7


        let a = Person(age: 7, passport: 123)
        let b = Person(age: 15, passport: 777)
        let c = Person<String, Int>(age: "twenty", passport: 4000)
        let d = Person<Int, Bool>(age: 12, passport: false)

        let e = Person(leftPoczket: 500, rightPocket: "money", pantsPocket: 20.0)
        
        printSome(a: "hello", b: 777)
        
        let a = A<Int>()
        
        a.somePrint(a: 1, b: "Hello World")
        a.somePrint(a: "ERROR", b: "Hello World")       //      Будет ошибка тк мы явно создали экзменпляр а с явным типом Int дженерик типа Т структуры А
        
        print(sum(a: 500.1, b: 2.9))
    }
}

/* MARK: РАСШИРЕНИЯ EXTENSIONS
 
    Специальная конструкция языка, позволяющая дописать некоторую функциональность к типу, за пределами объявления этого типа.
 
 У одного типа может сколько угодно расширений.
 
 Зачем нужны расширения?
    -   Разбить описание типа на несколько файлов.
    -   Разбить описание типа на логические блоки.
    -   TOP! Добавить функциональность к типу из библиотеки, например метод к типу String.

 В расширениях МОЖНО:
    -   Добавлять методы
    -   Добавлять вычисляемые свойства
    -   Добавлять сабскрипты
    -   Статические методы
    -   Статические хранимые свойства
    -   Статические вычисляемые своства
    -   Вспомогательные конструкторы для классов
    -   Обычные конструкторы для структур и перечислений
 
 В расширениях НЕЛЬЗЯ:
    -   Добавлять обычные конструкторы для классов
    -   Хранимые свойства
 
 УДОБНО делать приватные расширения!
 
 В расширениях НЕЛЬЗЯ ничего переопределять!
 
 */


struct A {
    let a: Int
    
    }

extension A {
    func printInfo() {
        print(a)
    }

}

extension Array {                                       //      Можно написать свое расширение которое будет проверять вышли мы за пределы массива
    func safeElement(_ index: Index) -> Element? {
        guard index < count else { return nil }
        
        return self[index]
    }
}

@main
struct Application {
    static func main() throws {
        let a = ["Ivan", "Petr", "Kyzma"]
//        print(a[4])     //      Получим ошибку фаталэрор. Поэтому приходится делать проверку чтобы не выйти за пределы массива.
        if 4 < a.count {
            print(a[4])
        }
        
        let elem = a.safeElement(1)
        print(elem)
    }
}


/* MARK:  ПРОТОКОЛЫ   PROTOCOL
 
    Особый способ создавать типы, в отличии от классов и структур, он не создает полноценный тип и не может использоваться самостоятельно, без какого либо другого типа.
 
 Protocol:
    -   Просто интерфейсы, которые описывают наличие у типа свойств и методов.
    -   Миксины, протоколы которые могут не только описывать какой то метод, но и добавлять его реализацию.
    -   ПАТ (PAT)  - Protocol with Associated Type, протоколы похожие на дженерики, то есть  имеющие какие то типы, которые будут раскрыты в момент использования, но момент описания.
 
 Для чего нужны протоколы?
    Чтобы было понимание, что в классе/структуре/ есь все описанные в протоколе методы и свойства и что эти класс/структура могут использоваться там где требуется тип протокола.
 
 Протоколы в отличии от наследования, имплементируют ТРЕБОВАНИЯ!!!, не НАСЛЕДУЮТ!
 
 По умолчанию протоколы считаются ТИПАМИ ЗНАЧЕНИЯ! НО!!! protocol (имя): AnyObject - сделает протокол с ссылками для классов.
 
 Композиция протоколов - можно реализовать в классе поддержку нескольких протоколов.
 
 Если нам нужно чтобы класс наследовался от родительского класса, наименование родительского класса должно быть первым после : , а дальше можно указывать все необходимые протоколы.
 
 */

protocol Unit {
    func printInfo()
}

protocol WithCost {
    var cost: Int { get }
}

protocol WithWeight {
    var weight: Int { get }
}

struct Person: Unit, WithWeight {
    let name: String
    let weight: Int
    
    func printInfo() {
        print("\(name) \(weight)")
    }
}

struct Table: Unit, WithCost, WithWeight {
    let model: String
    let weight: Int
    let cost: Int
    
    func printInfo() {
        print("\(model) \(cost) \(weight)")
    }
}

struct Software: Unit, WithCost {
    let name: String
    let key: String
    let cost: Int
    
    func printInfo() {
        print("\(name) \(key) \(cost)")
    }
}

protocol Some {                 //      Образец синтаксиса, убираем тело методов.
    var a: Int { get }          //      Read Only!
    var b: Int { get set }      //      Read + Write    (свойства можно будет делать variable).
    
    func calculateArea()
    func sum(a: Int, b: Int) -> Int
    
//    static var c: Int { get }
//    subscript(c: Int) -> String { get }
//    init(c: Int)
}

struct SomeStruct: Some {             //      Образец синтаксиса, должны совпадать сигнатуры методов в протоколе.
    let a: Int
    var b: Int
    
    
    func calculateArea() {
        print("result")
    }
    
    func sum(a: Int, b: Int) -> Int {
        let result = a + b
        return result
    }
}

protocol Areable {
    func getArea() -> Int
}

struct Square {
    let side: Int
}

extension Square: Areable {         //      Во многих компаниях протоколы пишут через Extension's так считается самый красивый топ топов!
    func getArea() -> Int {
        side * side
    }
}

@main
struct Application {
    static func main() throws {
        let list: [Unit] = [
            Person(name: "Ivan", weight: 75),
            Table(model: "Ergostol", weight: 50, cost: 30000),
            Software(name: "Backend Server", key: "ffdd99fdksf", cost: 15000)
        ]
        
        for item in list {
            item.printInfo()
        }
        
        let itemsWithCost: [WithCost] = [
            Table(model: "Ergostol", weight: 50, cost: 30000),
            Software(name: "Backend Server", key: "ffdd99fdksf", cost: 15000)
        ]
        
        for item in itemsWithCost {
            print(item.cost)
        }
        
        let itemsWithWeight: [WithWeight] = [
            Person(name: "Ivan", weight: 75),
            Table(model: "Ergostol", weight: 50, cost: 30000)
        ]
        
        for item in itemsWithWeight {
            print(item.weight)
        }
    }
}

/* MARK: ПРОТОКОЛЫ С РЕАЛИЗАЦЕЙ ПО УМОЛЧАНИЮ
 
 На примере рассмотрим протокол описывающий квадратные предметы, он требует наличие ширины, высоты, метода расчета площади.
    
 Внимательно! Если в двух разных протоколах будут методы с однинаковыми сигнатурами и реализациями, могут быть конфликты!
 
 Реализация по умолчанию позволяет избежать множества одинаковых реализаций методов протокола, это полезный инструмент.
    
 Также реализация по умолчанию УСЛОЖНЯЕТ автоматическое тестирование.
 
 */

protocol SquareSizable {
    var sideA: Int { get }
    var sideB: Int { get }
    
    func area() -> Int
}

extension SquareSizable {       //      Подключаем через extension для протокола реализацию метода расчета площади
    func area() -> Int {
        sideA * sideB
    }
}

struct Window: SquareSizable {
    let sideA: Int
    let sideB: Int
    
    func area() -> Int {        //      Метод внутри структуры приоритетнее, чем в протоколе! Внимательно!
        0
    }
}

struct Carpet: SquareSizable {
    let sideA: Int
    let sideB: Int
}

@main
struct Application {
    static func main() throws {
        let a: [SquareSizable] = [
        Window(sideA: 5, sideB: 10),
        Carpet(sideA: 300, sideB: 600)
        ]
        for i in a {
            print(i.area())
        }
    }
}

/* MARK:  ПРОТОКОЛЫ С АСCОЦИИРОВАННЫМИ ЗНАЧЕНИЯМИ (PAT) Protocol with Associated Types
 
 PAT похожи на дженерики! Они содержат в себе какой-то тип, но какой точно - неизвестно! :)
 
 Ключевое слово в синтаксисе РАТ - associatedtype
 
 Асоциированные типы могут иметь уточняющие ограничения.
 
 Можно использовать в протоколах ключевое слово Self, это ссылка на текущий тип, но не на тип протокола, а на тип который его реализует.
 
 PAT можно использовать как тип для свойств и аргументов, но только с ключевым словом any при этом мы не видим конкретный тип ассоциированного типа.
 
 РАТ можно использовать для ограничения дженерик типов.
 
 */

protocol ContainerForData {
    associatedtype T

    var data: T { get }

    func copy() -> Self
}

struct SomeInt: ContainerForData {
    typealias T = Int

    let data: Int

    func copy() -> SomeInt {
        return SomeInt(data: data)
    }
}

struct SomeString: ContainerForData {       //      Можно typealias не прописывать, компилятор поймет.
    let data: String

    func copy() -> SomeString {
        return SomeString(data: data)
    }
}

struct Example {
    let a: Int
    let b: Int
    let c: [Int]

    func sum(a: Int, b: Int) -> Int {
        a + b
    }
}

// ----------------------------------------

protocol IntContainer {
    var value: Int { get }
}

struct Some: IntContainer {
    var value: Int
}

struct Example {
    let a: IntContainer
    let b: IntContainer
    let c: [IntContainer]

    func sum(a: IntContainer, b: IntContainer) -> IntContainer {
        let result = a.value + b.value
        return Some(value: result)
    }
}

//------------------------------------------


struct Container<T> {       //      Структура типа дженерик
    let value: T
}

struct Example {
    let a: Container<Int>
    let b: Container<Int>
    let c: [Container<Int>]

    func sum(a: Container<Int>, b: Container<Int>) -> Container<Int> {
        let result = a.value + b.value
        return Container<Int>(value: result)
    }
}

//----------------------------------------------------------------------

protocol Container {
    associatedtype T
    var value: T { get }
    
    init(value: T)
}

struct Some: Container {
    typealias T = Int
    
    let value: Int
}

struct Example<C> where C: Container, C.T == Int {
    let a: C
    let b: C
    let c: [C]

    func sum(a: C, b: C) -> C {
        let result = a.value + b.value
        return C(value: result)
    }
}

@main
struct Application {
    static func main() throws {
        let a = Some(value: 1)
        let b = Example<Some>(a: a, b: a, c: [a])

        print(b)
    }
}

/*

//MARK: СТАНДАРТНЫЕ ПРОТОКОЛЫ
 
Разберемся как наделять наши собственные типы поведением свойственным типам из базового набора.
Например способностью выводить подробную информацию в консоль при вызове метода print или созданию строкового литерала.
 
Что такое стандартные протоколы?
 
Условно у нас есть некий список стандартных протоколов, реализуя которые мы можем наделять наши типы каким-то стандартным поведением.

    CustomStringConvertible - предствлять себя в качестве строки, в том числе при выводе через print.
 
    Comparable - сравнивать через стандартный оператор сравнивания.
 
    ExpressibleByStringLiteral - создавать строковым литералом.
 
    AdditiveArithmetic - участвовать в простых математических операциях.
 
    Hashable - использовать в качестве ключей для словаря или хранить во множествах.
 
    Sequence - перебирать в циклах for in.
 
 Все секреты тут - https://developer.apple.com/
 
 */

//  CustomStringConvertible

struct Person {
    let name: String
    let surname: String
    let age: Int
    let children: [String]
    
    init(
        name: String,
        surname: String,
        age: Int,
        children: [String]
    ) {
        self.name = name
        self.surname = surname
        self.age = age
        self.children = children
    }
}

extension Person: CustomStringConvertible {
    
    var description: String {
        var description =
        """
        Ф.И.О:      \(surname) \(name)
        Возраст:    \(age) лет
        Дети:
        """
        description += "\n"
        for child in children {
            description += "\t- \(child)\n"
        }
        return description
    }
}

//  Hashable

extension Person: Hashable {
    static func == (a: Person, b: Person) -> Bool {
        return a.name == b.name && a.surname == b.surname
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(surname)
    }
}

// ExpressibleByStringLiteral

struct Email {
    let value: String
}

extension Email: ExpressibleByStringLiteral {
    init(stringLiteral: String) {
        self.init(value: stringLiteral)
    }
}

@main
struct Application {
    static func main() throws {
        let person = Person(name: "Ivan", surname: "Petrov", age: 25, children: ["Egor", "Oleg"])
        let string = "\(person)"        //      Интерполяция строк
        print(string)

        let persons = Set([
            Person(name: "Ivan", surname: "Petrov", age: 25, children: ["Egor", "Oleg"]),
            Person(name: "Oleg", surname: "Baltov", age: 55, children: ["Olga", "Kirill"]),
            Person(name: "Pavel", surname: "Ololov", age: 43, children: ["Robert", "Oksana"])
        ])
        print(persons)

        let hashTestPerson = Person(name: "Oleg", surname: "Baltov", age: 6, children: [])

        print(persons.contains(hashTestPerson))     //      Выдает true по тому что по ХЭШЕРУ проверяем только имя и фамилию
        
        let email = Email(value: "ios@dev.com")
        print(email)
    }
}


/*
 
//MARK:     ОБРАБОТКА ОШИБОК
 
 Например упрощенная версия калькулятора(1), в которой могут быть ошибки.
    1. Главный недостаток такого подхода в примере 1 - вывод ошибки размазан по коду приложения, мы не можем посмотреть список ошибок и быстро подправить все в одном месте.
    2. Ошибки происходят в разных местах и мы дублируем вывод информации о них пользователю.
    3. Постоянные проверки значений.
    4. Частота ошибок в будущем плохо отобразятся на UI
 
 Синтаксис обработок ошибок:
    -   Error - протокол ошибки
    -   throws - ключ слово, по которому помечается функция, которая может вернуть ошибку вместо результата
    -   throw - ключ слово, которое используется вместо return для возврата ошибки.
    -   try - ставится перед вызовом функции возвращаемой ошибку.
    -   do {} - оператор в теле которого можно вызывать функции возвращающие ошибки для их обработки.
    -   catch {} - оператор в теле которого можно обработать ошибку которая возникла в блоко do
 
 СТЭК ВЫЗОВОВ! ОШИБКА ВЫБРАСЫВАЕТСЯ!
    
 Стек ошибок можно сделать из ENUM или STRUCT
 
 try? - делает наш экземпляр опциональной "ошибкой" значением
 
 В конце каждого блока do{} делаем финальным catch let error! ОБЯЗАТЕЛЬНО!
 
 */


//  1

func getStringFromUser() -> String? {
    let value = readLine()
    guard let string = value else {
        print("Please input value!")
        return nil
    }
    return string
}

func getIntFromUser() -> Int? {
    let string = getStringFromUser()

    guard let string = string else {
        return nil
    }

    guard let int = Int(string) else {
        print("Please input number!")
        return nil
    }
    return int
}

func getOperationFromUser() -> String? {
    let string = getStringFromUser()

    guard let string = string else {
        return nil
    }

    guard string == "/" else {
        print("Please input correct operation!")
        return nil
    }
    return string
}

func divide() -> Int? {
    let a = getIntFromUser()
    let b = getIntFromUser()

    guard let a = a else {
        print("Please input number!")
        return nil
    }

    guard let b = b else {
        print("Please input number!")
        return nil
    }

    guard b != 0 else {
        print("Divide by 0!")
        return nil
    }
    return a / b
}

func calculate(operation: String) -> Int? {
    switch operation {
    case "/":
        guard let result = divide() else {
            print("Divide error!")
            return nil
        }
        return result
    default:
        print("Error operation!")
        return nil
    }
}

@main
struct Application {
    static func main() throws {
        let operation = getOperationFromUser()
        guard let operation = operation else {
            return
        }
        let result = calculate(operation: operation)
        guard let result = result else {
            return
        }
        print(result)
    }
}

//  2

enum ParseError: Error {
    case ExpectedInt
}

enum CalculatorError: Error {
    case EmptyUserInput
    case IncorrectTypeFromUserInput(ParseError)
    case IncorrectOperation
    case DivisionByZero
}

func getStringFromUser() throws -> String {
    let value = readLine()
    guard let string = value else {
        throw CalculatorError.EmptyUserInput
    }
    return string
}

func getIntFromUser() throws -> Int {
    let string =  try getStringFromUser()

    guard let int = Int(string) else {
        throw CalculatorError.IncorrectTypeFromUserInput(.ExpectedInt)
    }
    return int
}

func getOperationFromUser() throws -> String {
    let operation = try getStringFromUser()

    guard operation == "/" else {
        throw CalculatorError.IncorrectOperation
    }
    return operation
}

func divide() throws -> Int {
    let a = try getIntFromUser()
    let b = try getIntFromUser()

    guard b != 0 else {
        throw CalculatorError.DivisionByZero
    }
    return a / b
}

func calculate(operation: String) throws -> Int {
    switch operation {
    case "/":
        return try divide()
    default:
        throw CalculatorError.IncorrectOperation
    }
}

@main
struct Application {
    static func main() throws {
        do {
            let operation = try getOperationFromUser()
            let result = try calculate(operation: operation)
            print(result)
        } catch CalculatorError.EmptyUserInput {
            print("value error")
        } catch CalculatorError.IncorrectTypeFromUserInput(let error) {
            switch error {
            case .ExpectedInt:
                print("number error")
            }
        } catch CalculatorError.IncorrectOperation {
            print("operation error")
        } catch CalculatorError.DivisionByZero {
            print("zero error")
        } catch let error {
            print(error)
        }
    }
}

//  3

enum SomeError: Error {
    case first
}

func someFunc() throws -> Int {
    throw SomeError.first
}

func someFunc2() throws -> Int {
    let result = try someFunc()
    return result + 2
}

func someFunc3() throws -> Int {
    let result = try someFunc2()
    return result + 3
}

func someFunc4() throws -> Int {
    let result = try someFunc3()
    return result + 4
}

@main
struct Application {
    static func main() throws {
        do {
            let value = try someFunc4()
            print(value)
        } catch (let error) {
            print(error)
        }
    }
}


 // MARK:  ЗАМЫКАНИЯ CLOSURES
 
 /*
 
 Хранение функций в переменных и передача их в другие функции.
 
 Зачем нужны замыкания?
 
    Чтобы что-то выполнять, посути это ВЫПОЛНЕНИЕ! (4)
 
 Замыкания они как структуры или классы! (5)
 
 Синтаксис замыканий (6)
 
    Круглые скобки, в которых перечислены аргументы, которые можно передать в замыкание, а затем через стрелку -> указывается тип значения который вернет замыкание при выполнении.
    Замыкания могут принимать аргументы и возвращать значения
 
    in - разделяет замыкание слева сигнатура замыкания, а справа тело замыкания.
 
 Синтаксис замыкания для передачи в методы и функции (7)
 
 Замыкания захватывают переменные! (8)
 
    Методы находятся в разных областях видимости!
 
 Лист захвата (9)
 
    Допустим, нам нужна копия, а не оригинал (чтобы ненароком случайно ничего не поменять)
    [] до блока IN в сигнатуре замыкания
    Если указать что в листе захвата мы захватываем [c] все координально поменяется!
    Будет копироваться значение, а не ссылка!!!
 
 Лист захвата и управление памятью (10)
 
    Существует ли счетчик ссылок для замыканий? НЕТ!
    Замыкание хранит захваченные ссылки не только на структуры, но и на классы, при этом, можно хранить само замыкание! Но минус можно словить цикл удержания и утечку памяти!
    
    Чтобы разорвать цикл пригодится WEAK в листе захвата при работе с классами!
 
 Типы замыканий в переменных и аргументах (11)
 
 Функции обратного вызова (12)
    
 */

// 1

struct Person {         //  Список сотрудников
    let name: String
    let age: Int
}

enum SortType {
    case ageToOld
    case ageToYoung
}


func sort(persons: [Person], type: SortType) -> [Person] {      //      Сортировка по возрасту в двух направлениях
    var persons = persons
    for i in 0..<persons.count - 1 {
        for j in (i + 1)..<persons.count {
            let isNeedSwapToOld = type == .ageToOld && persons[i].age > persons[j].age
            let isNeedSwapToYoung = type == .ageToYoung && persons[i].age < persons[j].age
            if isNeedSwapToOld || isNeedSwapToYoung {
                let tmp = persons[i]
                persons[i] = persons[j]
                persons[j] = tmp
            }
        }
    }
    return persons
}

@main
struct Application {
    static func main() throws {
        let persons = [
        Person(name: "Ivan", age: 30),
        Person(name: "Petr", age: 42),
        Person(name: "Andrey", age: 28)
        ]

        let personToOld = sort(persons: persons, type: .ageToOld)
        let personToYoung = sort(persons: persons, type: .ageToYoung)

        print(personToOld)
        print(personToYoung)
    }
}

//  2

struct Person {     //  Список сотрудников
    let name: String
    let age: Int
}

protocol CompareOperation {
    func compare(_ a: Person, _ b: Person) -> Bool
}

class ToOldCompareOperation: CompareOperation {
    func compare(_ a: Person, _ b: Person) -> Bool {
        a.age > b.age
    }
}

class ToYoungCompareOperation: CompareOperation {
    func compare(_ a: Person, _ b: Person) -> Bool {
        a.age < b.age
    }
}

class ByNameCompareOperation: CompareOperation {
    func compare(_ a: Person, _ b: Person) -> Bool {
        a.name > b.name
    }
}

func sort(persons: [Person], operation: CompareOperation) -> [Person] {      //      Сортировка по возрасту в двух направлениях
    var persons = persons
    for i in 0..<persons.count - 1 {
        for j in (i + 1)..<persons.count {
            if operation.compare(persons[i], persons[j]) {
                let tmp = persons[i]
                persons[i] = persons[j]
                persons[j] = tmp
            }
        }
    }
    return persons
}

@main
struct Application {
    static func main() throws {
        let persons = [
        Person(name: "Ivan", age: 30),
        Person(name: "Petr", age: 42),
        Person(name: "Andrey", age: 28)
        ]

        let personsToOld = sort(persons: persons, operation: ToOldCompareOperation())
        let personsToYoung = sort(persons: persons, operation: ToYoungCompareOperation())
        let personsByName = sort(persons: persons, operation: ByNameCompareOperation())

        print(personsToOld)
        print(personsToYoung)
        print(personsByName)
    }
}

//  3

struct Person {     //  Список сотрудников
    let name: String
    let age: Int
}

func sort(persons: [Person], compare: (Person, Person) -> Bool) -> [Person] {      //      Сортировка по возрасту в двух направлениях
    var persons = persons
    for i in 0..<persons.count - 1 {
        for j in (i + 1)..<persons.count {
            if compare(persons[i], persons[j]) {        //      В этот момент сработает замыкание
                let tmp = persons[i]
                persons[i] = persons[j]
                persons[j] = tmp
            }
        }
    }
    return persons
}

@main
struct Application {
    static func main() throws {
        let persons = [
        Person(name: "Ivan", age: 30),
        Person(name: "Petr", age: 42),
        Person(name: "Andrey", age: 28)
        ]

        let personsToOld = sort(persons: persons, compare: { $0.age > $1.age })     //      Тут описываем условия замыкания
        let personsToYoung = sort(persons: persons, compare: { $0.age < $1.age })
        let personsByName = sort(persons: persons, compare: { $0.name > $1.name })

        print(personsToOld)
        print(personsToYoung)
        print(personsByName)
    }
}

//  4

func some() {
    print("some")
}

func someNew(closure: () -> Void) {       //
//    print("someNew")
}

@main
struct Application {
    static func main() throws {
//                 some()           //      Вызывали её

        {print("hi")}()           //      Это - замыкание

        let a = {print("hello!")}   //      Теперь в константе а хранится замыкание

        a()        //      - ПОСЛЕ СКОБОК ЗАМЫКАНИЕ ВЫЗЫАЕТСЯ
    }
}

//  5

struct Closure {
    func perform() {
        print("hello")
    }
}

let a = Closure()

@main
struct Application {
    static func main() throws {
        let a = Closure()
        let b = a
        a.perform()     //      Очень похоже на замыкание. Если отбросить все в структуре кложер, то останется по сути замыкание с телом print("hello")

    }
}

//  6

@main
struct Application {
    static func main() throws {

        let closure = { print("THIS IS CLOSURE") }      //  Упрощенный вариант

        let closureFull: () -> Void = { () -> Void in print("Full")}    //  Полная запись

        closure()
        closureFull()

        let newClosure: (Int, Int) -> Int = {  $0 + $1 }                     //      Замыкание умеет сумировать числа

        let result = newClosure(1, 3)

    }
}

//  7

func some(closure: (Int, Int) -> Int) {
    let result = closure(2, 3)
    print(result)
}

@main
struct Application {
    static func main() throws {

        let closure = { (a: Int, b: Int) in
            return a + b
        }

        some(closure: closure)      //      Положили наше замыкание в константу

        some(closure: { $0 + $1 })  //      Можно прям тут написать замыкание

        some() { $0 + $1 }          //      5

        some { $0 + $1 }            //      5
    }
}

//  8

func some(closure: (Int, Int) -> Int) {
    let a = 2
    let b = 3
    print(closure(a, b))
}

@main
struct Application {
    static func main() throws {
        var c = 15
        let closure: (Int, Int) -> Int = {
            c = 100                                   //       Также внутри замыкания можно поменять переменую по ССЫЛКЕ!!!
            return $0 + $1 + c                        //      "Захватили" переменную с и захватили его ПО ССЫЛКЕ!!! как объект класса!
        }
        c = 0
        some(closure: closure)
        print(c)
    }
}

//  9

func some(closure: (Int, Int) -> Int) {
    let a = 2
    let b = 3
    print(closure(a, b))
}

@main
struct Application {
    static func main() throws {
        var c = 15
        let closure: (Int, Int) -> Int = { [c] a, b in
//            c = 100
            return a + b + c
        }
        c = 0
        some(closure: closure)
        print(c)                //  20
    }
}

//  10

class A {

    var closure: (() -> Void)?      //      Свойство типа замыкание

    deinit {                        //      Метод вызывается, когда объект уничтожается из памяти.
        print("A destroyed")
    }
}

func some() {
    let a = A()
    a.closure = { [weak a] in print(a) }        //      Получился цикл удержания. Объект держит замыкание, а замыкание держит объект.
}

@main
struct Application {
    static func main() throws {
          some()
    }
}

//  11

class A {
    var closure: () -> Void      //      Короткое указание хамыкания

    }

class B {
    var closure: ((Int, Int) -> Int)?       //      Как пометить опциональным сам тип? Обернуть в круглые скобки!

    init(closure: ((Int, Int) -> Int)?) {
        self.closure = closure
    }
}

//  12

@main
struct Application {
    static func main() throws {
        some(complishion: {             //      Вызывая комплишен попадаем как бы обратно!
            print($0)
        })
    }
}

func some(complishion: (Int) -> Void) {
    let result = 5 + 9
    complishion(result)                     //     Есть некая функция, которая в конце вызывает закыкание. Такое называется "Функции обратного вызова". Удобно для получения данных с бэка.
}

//MARK: МАССИВЫ + ЗАМЫКАНИЯ


// MAP .map

struct Person {
    let age: Int
    let name: String
}

@main
struct Application {
    static func main() throws {
        let array = Array(lenght: 10).map { String(describing: $0) }  //  (2) Дженерик функция .map берет элемент массива и делает некие вещи с ним. В данном примере возвращает массив строк.
        print(array)

        let persons = [
        Person(age: 21, name: "Petr"),
        Person(age: 12, name: "Ivan"),
        Person(age: 21, name: "Oleg")
        ]

        let newPersons = persons.map() { $0.name }      //  (3) Можно также развлекаться со структурами.
        print(persons)
        print(newPersons)
    }
}

    //func makeArray() -> [Int] {                                          //  (1) Генерируем массив случайных чисел.
    //    Array(0..<10).map { _ in Int.random(in: 0...100) }               //  (4) Вариант создания массива через замыкание, через in отбрасываем изначальные элементы и подставляем случайное число от 0 до 100.
    //
    //    var array = [Int]()
    //    for _ in 0..<10 {
    //        let randomNumber = Int.random(in: 0...100)
    //        array.append(randomNumber)
    //    }
    //    return array
    //}

extension Array where Element == Int {      //  (5) Расширение не для всего Array'a, а только для тех элементов, чьё значение будет Int.

    init(lenght: Int) {
        self = Array(0..<lenght).map { _ in Int.random(in: 0...100) }
    }
}


//  CompactMap  .compactMap

@main
struct Application {
    static func main() throws {
        let array = ["1", "2", "q", "w", "3", "x"]
        let newArray = array.compactMap { Int($0) }     //  compactMap просто выкидывает все опциональные результаты (nil). Всё что было Int преобразуется в новый массив и выдается принтом.
        print(newArray)
    }
}

extension Array where Element == Int {

    init(lenght: Int) {
        self = Array(0..<lenght).map() { _ in Int.random(in: 0...100) }
    }
}


//  FlatMap .flatMap

@main
struct Application {
    static func main() throws {
        let array = ["Hello", "World"]
//      let newArray = array.map { Array($0) }          //   [["H", "e", "l", "l", "o"], ["W", "o", "r", "l", "d"]]
        let newArray = array.flatMap { Array($0) }      //   ["H", "e", "l", "l", "o", "W", "o", "r", "l", "d"]         FlatMap убирает вложенные массивы!
        print(newArray)
    }
}

extension Array where Element == Int {

    init(lenght: Int) {
        self = Array(0..<lenght).map() { _ in Int.random(in: 0...100) }
    }
}


//  Поиск максимального и минимального элемента в массиве

@main
struct Application {
    static func main() throws {

        let array = Array<Int>(lenght: 10)        //      (1) Создаем массив случайных чисел
        let maxElement = array.max()              //      (4) Можно проще сделать в 1 строку.
//        var maxElement = Int.min                //      (2) Изначально, переменной присваем минимальное Int которое возможно!
//        for element in array {                   //      (3) Перебираем массив, если number больше нашего maxElementa, то подставляем его в maxElement
//            if element > maxElement {
//                maxElement = element
//            }
//        }
        print(array)
        print(maxElement ?? "")
    }
}

extension Array where Element == Int {

    init(lenght: Int) {
        self = Array(0..<lenght).map() { _ in Int.random(in: 0...100) }
    }
}

//  Filter  .filter

@main
struct Application {
    static func main() throws {

        let array = Array<Int>(lenght: 10)
        print(array)
        let newArray = array.filter { $0 % 2 != 0 }                             //      (3) Можно проще написать через .filter  Важно понимать, что .filter не меняет исходный массив, а создаёт новый на основании старого!

//        for index in stride(from: array.count - 1, through: 0, by: -1) {      //      (1) Удаляем нечетные числа. Проходим по массиву с самого начала, чтобы удаление не сбивало индексы.
//            if array[index] % 2 == 0 {                                        //      (2) Если остаток от деления на 2 равен нулю (т.е. элемент массива четный) удаляем его.
//                array.remove(at: index)
//            }
//        }

        print(newArray)
    }
}

extension Array where Element == Int {

    init(lenght: Int) {
        self = Array(0..<lenght).map() { _ in Int.random(in: 0...100) }
    }
}

//  Фильтрация для двух массивов

@main
struct Application {
    static func main() throws {

        let arrayA = Array<Int>(lenght: 10)
        let arrayB = Array<Int>(lenght: 10)

        print(arrayA)
        print(arrayB)

        let commonArray = arrayA + arrayB

        let newA = commonArray.filter { $0 % 2 != 0 }
        let newB = commonArray.filter { $0 % 2 == 0 }

        print(newA)
        print(newB)
    }
}

extension Array where Element == Int {

    init(lenght: Int) {
        self = Array(0..<lenght).map() { _ in Int.random(in: 0...100) }
    }
}


//  Сортировка Sort .sort

@main
struct Application {
    static func main() throws {

        var array = Array<Int>(lenght: 10)
        print(array)
        array.sort { $0 < $1 }
        print(array)

//        for i in 0..<array.count - 1 {
//            for j in (i + 1)..<array.count {
//                if array[i] > array[j] {
//                    let tmp = array[i]
//                    array[i] = array[j]
//                    array[j] = tmp
//                }
//            }
//        }
//        print(array)
    }
}

extension Array where Element == Int {

    init(lenght: Int) {
        self = Array(0..<lenght).map() { _ in Int.random(in: 0...100) }
    }
}

//  Поиск в массиве

@main
struct Application {
    static func main() throws {

        let array = Array<Int>(lenght: 10)
        let element = array.first { $0 % 2 == 0 }       //  (1) Ищем первый элемент который == чётное число (также есть .last .firstIndex)
        print(array)
        print(element)
    }
}

extension Array where Element == Int {

    init(lenght: Int) {
        self = Array(0..<lenght).map() { _ in Int.random(in: 0...100) }
    }
}

//  Проверка в массиве на наличие элемента .contains .allSatisfy

@main
struct Application {
    static func main() throws {

        let array = Array<Int>(lenght: 10)
        let hasEven = array.contains { $0 % 2 == 0 }    //  Получаем первый четный элемент, мы выполнили условия, резльтат true (есть также allSatisfy - ВСЕ элементы должны удовлетворять определенным требованиям)
        print(array)
        print(hasEven)

    }
}

extension Array where Element == Int {

    init(lenght: Int) {
        self = Array(0..<lenght).map() { _ in Int.random(in: 0...100) }
    }
}


//  Prefix .prefix

@main
struct Application {
    static func main() throws {

        let array = Array<Int>(lenght: 10)
        let newArray = array.prefix { $0 % 2 != 0 }     //  В условиях остаток от деления на 2 не равен 0 (нечетный). Prefix запоминает в данных условиях только нечетные пока они удовлетворяют условиям.
        print(array)
        print(newArray)

    }
}

extension Array where Element == Int {

    init(lenght: Int) {
        self = Array(0..<lenght).map() { _ in Int.random(in: 0...100) }
    }
}

//  ForEach .forEach

@main
struct Application {
    static func main() throws {

        let array = Array<Int>(lenght: 10)
        array.forEach { print($0) }             //  Для каждого элемента, по очереди.
    }
}

extension Array where Element == Int {

    init(lenght: Int) {
        self = Array(0..<lenght).map() { _ in Int.random(in: 0...100) }
    }
}

//  Reduce .reduce  (Сворачиваем массив в одно значение!!!)

@main
struct Application {
    static func main() throws {

        let array = [1, 2, 3, 4, 5]
        var summ = 0

        for element in array {      //  (1)
            summ += element
        }
        print(summ)

        let newArray = array.reduce(0) { result, element in result + element }      // (2) .reduce(0) - где 0 - начальное значение по умолчанию, result - результат предыдущего вычисления, element - текущий элемент массива.
        print(newArray)

        let newStringArray = array.reduce("") { result, element in result + String(describing: element) }       //  (3) 12345
        print(newStringArray)
    }
}

extension Array where Element == Int {

    init(lenght: Int) {
        self = Array(0..<lenght).map() { _ in Int.random(in: 0...100) }
    }
}

//  Думать цепочками ВЫЧИСЛЕНИЙ!

//  ЗАДАЧА: Вывести в консоль квадраты всех четных элементов которые не больше 8

@main
struct Application {
    static func main() throws {

        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        
        let result = array      //  (3) Лучший подход к решению задачи! Lazy позволит улучшить производительность как у цикла for in!!!
            .lazy
            .prefix { $0 <= 8 }
            .filter { $0 % 2 == 0 }
            .map { $0 * $0 }
            .forEach { print($0) }
        
        
        let newArray = array.forEach { element in       //  (2) Важно понимать цикл будет дольше работать с forEach тк пройдемся по всему массиву!
            if element > 8 {
                return
            }
            if element % 2 != 0 {
                return
            }
            let newElement = element * element
            print(newElement)
        }
        
        for element in array {
            if element > 8 {        //  (1) Если элемент больше 8 то останавливаем цикл, условие больше 8
                break
            }
            if element % 2 != 0 {
                continue
            }
            let newElement = element * element
            print(newElement)
        }
    }
}

extension Array where Element == Int {

    init(lenght: Int) {
        self = Array(0..<lenght).map() { _ in Int.random(in: 0...100) }
    }
}

//MARK: Дженерик Замыкания

//      Сортировка дженерик замыкания!

struct Person {
    let name: String
    let age: Int
}

func sort(persons: [Person], compare: (Person, Person) -> Bool) -> [Person] {
    var persons = persons
    for i in 0..<persons.count - 1 {
        for j in (i + 1)..<persons.count {
            if compare(persons[i], persons[j]) {
                let tmp = persons[i]
                persons[i] = persons[j]
                persons[j] = tmp
            }
        }
    }
    return persons
}

@main
struct Application {
    static func main() throws {

        let persons = [
        Person(name: "Ivan", age: 35),
        Person(name: "Oleg", age: 32),
        Person(name: "Pavel", age: 30)
        ]
        let personToOld = sort(persons: persons, compare: { $0.age > $1.age })      //  [NewApplication.Person(name: "Pavel", age: 30), NewApplication.Person(name: "Oleg", age: 32), NewApplication.Person(name: "Ivan", age: 35)]
        print(personToOld)
        }
    }


// Extension Array

struct Person {
    let name: String
    let age: Int
}


@main
struct Application {
    static func main() throws {
        
        let persons = [
            Person(name: "Ivan", age: 35),
            Person(name: "Oleg", age: 32),
            Person(name: "Pavel", age: 30),
            Person(name: "Ignat", age: 11)
        ]
        
        let personToOld = persons.exampleSort { $0.age > $1.age }
        print(personToOld)
        
        let numbers = [1, 20, 33, 32323, 323, 665]
        let sortedNumbers = numbers.exampleSort { $0 < $1 }
        print(sortedNumbers)
    }
}

extension Array {
    
    func exampleSort(compare: (Element, Element) -> Bool) -> [Element] {
        var array = self
        for i in 0..<array.count - 1 {
            for j in (i + 1)..<array.count {
                if compare(array[i], array[j]) {
                    let tmp = array[i]
                    array[i] = array[j]
                    array[j] = tmp
                }
            }
        }
        return array
    }
}

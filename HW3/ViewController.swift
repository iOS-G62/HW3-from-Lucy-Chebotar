//
//  ViewController.swift
//  HW3
//
//  Created by Lucy Chebotar on 5/4/18.
//  Copyright © 2018 Lucy Chebotar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        //String Easy, Task 1
        //Создать строку со своим именем. Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем. Возвращенное значение показать в консоль
        print ("String Easy, Task 1")
        let myName = "Lucy11"
        print("The number of letters of \(myName) is \(charCount(in: myName))")
        print("=================================================")
        
        //String Easy, Task 2
        //Написать метод который принимает 2 слова, например имя и фамилию, возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом “_”
        print ("String Easy, Task 2")
        let name = "Ivan"
        let lastName = "Popkin"
        print ("UserName of \(name) \(lastName) is \(createUserName(name: name, lastN: lastName))")
        print("=================================================")
        
        //String Easy, Task 3
        //Создать строку с именем и своим отчеством. Создать метод который проверит его на окончание “ич/на”. Выводит “М” или “Ж” в зависимости от окончания. Также учитывать регистр букв, то есть ИЧ или Ич или На и тд.
        print ("String Easy, Task 3")
        print ("Who is it? - \(boyOrGirl(name:"ЖАННА", secondName:"ПетрОВНА"))")
        print("=================================================")
        
        //String Hard, Task 1
        //Создать метод который будет принимать строку где слитно написано Ваши ИмяФамилия “TungFam" и возвращать строку,  где они будут разделены пробелом.То есть алгоритм разбивает два слова которые начинаются на большую букву
        print ("String Hard, Task 1")
        print(separateBySpace(name: "TungNmFam"))
        print("=================================================")
        
        //String Hard, Task 2
        //Создать метод который принимает как аргумент строку. Метод выводит строку зеркально, например Ось -> ьсО, Привет -> тевирП. не используя reverse (сделать алгоритм самому посимвольно)
        print ("String Hard, Task 2")
        reverse(inputString: "Hello")
        print("=================================================")
        
        //String Hard, Task 3
        //добавить запятые в строку как их расставляет калькулятор 1234567 -> 1,234,567 12345 -> 12,345 (не использовать встроенный метод для применения формата)
        print ("String Hard, Task 3")
        print(makeMeComma(inputString: "12112340002"))
        print("=================================================")
        
        //String Hard, Task 4
        //проверить пароль на надежность от 1 до 5.
        //a) если пароль содержит числа +1
        //b) символы верхнего регистра +1
        //c) символы нижнего регистра +1
        //d) спец символы +1
        //e) если длина пароля 8 или более символов +1
        print ("String Hard, Task 4")
        print(checkIfSafe(input: "1455g"))
        print("=================================================")
        
        //Collections Easy, Task 1
        //Создать массив со значениями типа Int. Выполнить удаление всех элементов массива
        print ("Collections Easy, Task 1")
        var someArray = [1,4,3,2,1,6,5,3,23]
        print("Originally - \(someArray)")
        someArray.removeAll()
        print("Look! that`s empty now\(someArray)")
        print("=================================================")
        
        //Collections Easy, Task 2
        //Создать 2 массива со значениями типа Int. Сделать соединение данных массивов. Результат вывести в консоль.
        print ("Collections Easy, Task 2")
        let firstArray = [0,0,0,0]
        print("first array - \(firstArray)")
        let secArray = [4,4,4,4]
        print("second array - \(secArray)")
        print("Together - \(firstArray+secArray)")
        print("=================================================")
        
        //Collections Easy, Task 3
        //Создать массив с любыми значениями типа строка(во viewDidLoad()). Создать метод который будет принимать как аргумент массив. Метод должен выводить в консоль элементы массива (по одному в одной строке)
        print("Collections Easy, Task 3")
        let cars = ["ford", "suzuki", "honda", "nissan"]
        printing(array: cars)
        print("=================================================")
        
        //Collections Easy, Task 4
        //Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметром
        print("Collections Easy, Task 4")
        let colors = ["red", "black", "white", "orange"]
        print("Full Array - \(colors)")
        print("First and Last element - \(firstAndLast(long: colors))")
        print("=================================================")
        
        //Collections Easy, Task 5
        //Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары). Добавить в данный словарь еще 2 новых элемента.
        print("Collections Easy, Task 5")
        var nameAge = ["Nikola" : 33,
                       "Masha" : 12,
                       "Ivanka" : 90 ]
        print("Original dictionary - \(nameAge)")
        nameAge["Sofia"] = 24
        nameAge["Karl"] = 78
        print("Add some new elements - \(nameAge)")
        print("=================================================")
        
        //Collections Easy, Task 6
        //Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары). Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка. Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент). Например: передаваемый словарь будет такой: ["Max": 1, "Dasha": 2, "Sergey": 3]. И если передать второй аргумент "Sergey", то метод должен удалить элемент из передаваемого массива с ключом "Sergey".
        print("Collections Easy, Task 6")
        let people = ["Nikola" : 33,
                       "Masha" : 12,
                       "Ivanka" : 90 ]
        print("Original dictionary - \(people)")
        print("Final dictionary - \(deletePeople(dict: people, nameToRemove: "Masha"))")
        print("=================================================")
        
        //Collections Hard, Task 1
        //Создать метод который принимает 2 аргумента: массив строк и просто строку. Метод возвращает true или false в зависимости есть ли данный элемент (тот второй аргумент, который строка) в массиве (тот первый аргумент, который массив строк).
        //например массив
        //let array = [“one”, “two”]
        //и если передать в этот метод “one“ то должно вернуть true
        //а если передать “three” то должно вернуть false
        print("Collections Hard, Task 1")
        let array = ["one", "two", "bbb"]
        print (doesContain(inputString: array, lookFor: "BOOM!"))
        print("=================================================")
        
         //Collections Hard, Task 2
        //метод который выведет все ключи словаря
        //метод который выведет все значения словаря
        print("Collections Hard, Task 2")
        let someDict = [3 :"Paris",
                        4: "London",
                        6: "Viena",
                        8: "New-York"]
        print ("Keys!")
        giveMeKeys(dictionary: someDict)
        print ("Values!")
        giveMeValues(dictionary: someDict)
        print("=================================================")
        
        //Collections Hard, Task 3
        //сортировка массива не встроенным методом по возрастанию + удалить дубликаты
        print("Collections Hard, Task 3")
        let newArray = [3,2,0,0,0,4,4,1,1,1 ,4,1]
        print("Before sorting - \(newArray)")
        print("After sorting - \(bubble(array: newArray))")
        print("=================================================")
        
        //Collections Hard, Task 4
        //Во ViewDidLoad создать словарь внутри которого будет 2 словаря (ключ - строка, значение - словарь). С любыми данными. Их мы будем передавать в метод, который напишем.
       // Создать метод который будет принимать как параметры: словарь (такого типа как выше) и строку. Данный метод должен вернуть значение которое хранится внутри элемента ключ которого был передан как аргумент.
        print("Collections Hard, Task 4")
        let grades = ["Chemistry" : ["Ivanova" : 5,
                                     "Petrova" : 3,
                                     "Sidorova": 4],
                            "Math" : ["Kovalev" : 3,
                                      "Krot" : 4,
                                      "Sekira": 5],
                        "Literature" :["Popchenko" : 5,
                                       "Petrov" : 4]]
        subjectGrades(journal: grades, subject: "Chemistry")
        print("=================================================")
        
        
        
    }
    //String Easy, Task 1
    //Создать строку со своим именем. Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем. Возвращенное значение показать в консоль
    func charCount(in name :String)->Int{
        return name.count
        }
    
    //String Easy, Task 2
    //Написать метод который принимает 2 слова, например имя и фамилию, возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом “_”
    func createUserName(name: String, lastN: String)-> String{
        return (name+"_"+lastN).lowercased()
    }
    
    //String Easy, Task 3
    //Создать строку с именем и своим отчеством. Создать метод который проверит его на окончание “ич/на”. Выводит “М” или “Ж” в зависимости от окончания. Также учитывать регистр букв, то есть ИЧ или Ич или На и тд.
    func boyOrGirl(name: String, secondName: String)->String{
        if secondName.lowercased().hasSuffix("ич"){
            return "М!"
        }else if secondName.lowercased().hasSuffix("на"){
            return "Ж!"
        }else {return "something`s wrong..."}
    }
    
    //String Hard, Task 1
    //Создать метод который будет принимать строку где слитно написано Ваши ИмяФамилия “TungFam" и возвращать строку,  где они будут разделены пробелом.То есть алгоритм разбивает два слова которые начинаются на большую букву
    func separateBySpace(name: String)->String {
        var fullName=name
        let upperAlhpabet = "A"..."Z"
        for letter in name{
            if upperAlhpabet.contains(String(letter)){
                fullName.insert(" ",at:fullName.characters.index(of: letter)!)
            }
        }
        return fullName
    }
    //str.insertString("(", atIndex: 0)
    //String Hard, Task 2
    //Создать метод который принимает как аргумент строку. Метод выводит строку зеркально, например Ось -> ьсО, Привет -> тевирП. не используя reverse (сделать алгоритм самому посимвольно)
    func reverse (inputString: String){
        let lastIndex = inputString.index(before: inputString.endIndex)
        var result = ""
        for i in 0..<inputString.count{
            let index = inputString.index(lastIndex, offsetBy: (i * -1))
            result += String(inputString[index])
        }
        print(result)
    }
    
    //String Hard, Task 3
    //добавить запятые в строку как их расставляет калькулятор 1234567 -> 1,234,567/ 12345 -> 12,345 (не использовать встроенный метод для применения формата)
    func makeMeComma (inputString: String)->String{
        var input = inputString
        let lastIndex = input.index(input.endIndex, offsetBy: -3, limitedBy: input.index(after:input.startIndex))
        if lastIndex == nil{
            return input
        }
        for i in 0...input.count{
            let index = input.index(lastIndex!, offsetBy: (i * -3), limitedBy: input.index(after:input.startIndex))
            if index != nil{
                input.insert(",",at:index!)
            }
        }
        return input
    }
    
    //String Hard, Task 4
    //проверить пароль на надежность от 1 до 5.
    //a) если пароль содержит числа +1
    //b) символы верхнего регистра +1
    //c) символы нижнего регистра +1
    //d) спец символы +1
    //e) если длина пароля 8 или более символов +1

    func checkIfSafe(input: String)->String{
        var points: Int = 0
        var criterias: String = ""
        var flagDigits = false
        var flagUpper = false
        var flagLow = false
        var flagSpecialSymb = false
        
        for letter in input{
            switch String(letter){
            case "0"..."9":
                if !flagDigits{
                    points += 1
                    criterias += "a."
                    flagDigits = true
                }
                break
            case "A"..."Z":
               if !flagUpper{
                    points += 1
                    criterias += "b."
                    flagUpper = true
                }
                break
            case "a"..."z":
                if !flagLow{
                    points += 1
                    criterias += "c."
                    flagLow = true
                }
                break
            case " ":
                return "Password shouldn`t contain space symbol!!!"
            default :
                if !flagSpecialSymb{
                    points += 1
                    criterias += "d."
                    flagSpecialSymb = true
                }
            }
        }
        if input.count >= 8{
            points += 1
            criterias += "e."
        }
        return String(points)+" "+criterias
    }
}
    //Collections Easy, Task 3
    //Создать массив с любыми значениями типа строка(во viewDidLoad()). Создать метод который будет принимать как аргумент массив. Метод должен выводить в консоль элементы массива (по одному в одной строке)
    func printing(array: [String]){
        for element in array{
            print((element))
        }
    }
    
    //Collections Easy, Task 4
    //Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметром
    func firstAndLast(long:[String])->[String]{
        var short = [String]()
        short.append(long[0])
        short.append(long.last!)
        return short
    }
    
    //Collections Easy, Task 6
    //Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары). Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка. Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент). Например: передаваемый словарь будет такой: ["Max": 1, "Dasha": 2, "Sergey": 3]. И если передать второй аргумент "Sergey", то метод должен удалить элемент из передаваемого массива с ключом "Sergey".
    func deletePeople(dict:[String : Int], nameToRemove: String)->[String: Int]{
        var dictionary = dict
        for name in dictionary.keys{
            if name == nameToRemove{
                dictionary[name] = nil
            }
        }
        return dictionary
    }

    //Collections Hard, Task 1
    //Создать метод который принимает 2 аргумента: массив строк и просто строку. Метод возвращает true или false в зависимости есть ли данный элемент (тот второй аргумент, который строка) в массиве (тот первый аргумент, который массив строк).
    //например массив
    //let array = [“one”, “two”]
    //и если передать в этот метод “one“ то должно вернуть true
    //а если передать “three” то должно вернуть false
    func doesContain (inputString : [String], lookFor: String)->Bool{
        
        for var i in 0..<inputString.count{
            if inputString[i] == lookFor{
                return true
            } else{
                i = i+1
            }
        }
    return false
    }

    //Collections Hard, Task 2
    //метод который выведет все ключи словаря
    //метод который выведет все значения словаря
    func giveMeKeys (dictionary:[Int: String]){
        for key in dictionary.keys{
            print("--\(key)")
        }
    }
    func giveMeValues (dictionary:[Int: String]){
        for value in dictionary.values{
             print("--\(value)")
        }
    }

    //Collections Hard, Task 3
    //сортировка массива не встроенным методом по возрастанию + удалить дубликаты
    func  bubble (array:[Int])->[Int]{
        var sortMe = Array(Set(array))
        for j in 0..<(sortMe.count-1){
            for i in 0..<(sortMe.count-1-j){
                if sortMe[i] > sortMe[1+i]{
                    sortMe.swapAt(i, i+1)
                }
        }
    }
        return sortMe
    }

    //Collections Hard, Task 4
    //Во ViewDidLoad создать словарь внутри которого будет 2 словаря (ключ - строка, значение - словарь). С любыми данными. Их мы будем передавать в метод, который напишем.
    // Создать метод который будет принимать как параметры: словарь (такого типа как выше) и строку. Данный метод должен вернуть значение которое хранится внутри элемента ключ которого был передан как аргумент.
    func subjectGrades(journal:[String : [String : Int] ], subject: String){
        var flag = false
        for key in journal.keys{
                if key == subject{
                print(journal[key]!)
                flag = true
            }
        }
        if flag == false{
            print ("No such subject...")
        }
    }


//
//  DictionaryExamoke.swift
//  Day_3_Collections
//
//  Created by test on 18.06.2022.
//

import Foundation

// я подсматривал сюда
// https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html
public func dictionariesExample(){
    
    print("***-Dictionaries_Example-***")
    
    // Пустой Dictionary
    var namesOfIntegers: [Int: String] = [:]
    
    var someDictionary:[String : Int] = ["a":4, "b":5, "c": 6]
    
    print(someDictionary)
    
    print("---Separator---")
    print(someDictionary["a"])
    someDictionary["a"] = 777
    print(someDictionary["a"])
    
    
    //someDictionary.keys
    //someDictionary.values
    print("---Separator---")
    for someKeyInDictionary in someDictionary.keys{
        print(someKeyInDictionary)
    }
    print("---Separator---")
    for someValueInDictionary in someDictionary.values{
        print(someValueInDictionary)
    }
    
    print("---Separator---")
    print("---Separator---")
    
    var interestingDictionary : [A_Struct:B]
        = [A_Struct(someString: "SomeVal"): B(name: "Hello"), A_Struct(someString: "SomeVal2"): B(name: "There"), A_Struct(someString: "SomeVal3"):B(name: "I'm cool dictionary")]
    print(interestingDictionary)
    
    print("---Separator---")
    
    for keyValuePair in interestingDictionary{
        print("\(keyValuePair.key) --- \(keyValuePair.value.name)")
    }
    
    // Конечно же так мы не извлечем значение, т.к. чтобы извлечь элемент из Dictionary нам нужен ключ, и если он нигде не записан, то конкретное значение по конкретному ключу мы не извлечем
    if let extractedValue = interestingDictionary[A_Struct(someString: "SomeVal")]{
        // этот блок кода исполнится, если нам удалось извлечь элемент из Dictionary, и здесь мы можем его безопасно использовать
        
        // А вообще если мы извлекаем значение из Dictionary - по ключу напрямую, то значение будет Optional(value)
    }
    
    // так мы получили так называемый первый "KeyValuePair" - то есть элемент с значениями "Key" и "Value"
    var firstValue = interestingDictionary.first! // Если не будет forceUnwrap то значение будет Optional(Value)
    if let extractedValue = interestingDictionary[firstValue.key]{
        print("Успешно извлекли значение из Dictionary по ключу")
        
    }
}

// Протокол Hashable необходим если мы хотим использовать тип данных (в нашем случае, класс А) - как ключ к значению в Dictionary
// Я не знаю, как правильно имплементировать эти интерфейсы для ReferenceType поэтому ниже я создал структуру ValueType "A_Struct", т.к. для структур не нужно указывать реализвацию для методов, которые нужно определить для протокола Hashable

// Полезно про хэш прочитать в указанной статье по поиску "Hash Values for Set Types"

public class A : Hashable{
    public func hash(into hasher: inout Hasher) {
        // По идее тут нужно написать код
    }
    
    public static func == (lhs: A, rhs: A) -> Bool {
        // По идее тут нужно написать код
        return true
    }
}
// Однако, нельзя было использовать пустую структуру абсолютно без значений (видимо зависит от врутреннего механизма как из структуры "извлекают" значение для ключа - "хеш")
public struct A_Struct : Hashable{
    var someString: String
    
    public init(someString:String){
        self.someString = someString
    }
}

public class B{
    
    public var name:String
    
    public init(name: String){
        self.name = name
    }
}

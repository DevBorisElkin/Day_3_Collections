//
//  SetsExample.swift
//  Day_3_Collections
//
//  Created by test on 18.06.2022.
//

import Foundation

// я подсматривал сюда
// https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html

// В принципе, можно было бы написат больше кода по каждой структуре данных, но тебе лучше все-таки посмотреть ссылку выше
// Я бы предпочел структуре данных Сет - обычный массив
public func setsExample(){
    
    var stringsSet = Set<String>()
    
    stringsSet.insert("1")
    stringsSet.insert("2")
    stringsSet.insert("3")
    stringsSet.insert("4")
    
    print(stringsSet)
    
    print("_________________")
    
    for variable in stringsSet{
        print(variable)
    }
    
    print("_________________")
    // create set and initialize values straight away
    var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
    print(favoriteGenres)
    
    print("_________________")
    
    // С сетами можно проделывать интересные операции объединения, или выбора уникальных данных которых нет в обоих сетах, я проверил, всё это с помощью методов, которые описаны в типе данных "Set" , этих методов нет, к примеру, в массивах, и в этом основное преимущество сетов над массивами
    
    var firstSet: Set<String> = ["1", "2", "3"]
    var secondSet: Set<String> = ["4", "5", "6"]
    
    // Обрати внимание что это массив, методы сетов есть только у них, но можно для аргумента в них передавать массивы
    var someStringsArray = ["3", "4", "5"]
    
    var anotherSet_2: Set<String> = ["3", "4", "5", "6"]
    
    // Операция чтобы найти общие значения в 2х сетах и получить только их
    var thirdSet = firstSet.intersection(someStringsArray)
    print(thirdSet)
    // Операция чтобы объединить все уникальные значения в 2х сетах кроме повторяющихся значений в каждом из сетов
    // другими словами возьмет все из 2х сетов кроме суммарно уникальных значений
    var fourthSet = firstSet.symmetricDifference(someStringsArray)
    print(fourthSet)
    // Операция чтобы объединить все уникальные значения в 2х сетах
    var fifthSet = firstSet.union(someStringsArray)
    print(fifthSet)
    
    print("_________________")
    // Операция чтобы получить уникальные значения присущие только первому сету, и убрать дубликаты, которые есть во втором сете
    var sixthSet = firstSet.subtracting(someStringsArray)
    print(sixthSet)
    // Операция чтобы получить уникальные значения присущие только первому сету, и убрать дубликаты, которые есть во втором сете
    var seventhSet = anotherSet_2.subtracting(firstSet)
    print(seventhSet)
    
    print("_________________")
    // Обрати внимание, что одинаковые значения будут убраны из сетов при запуске
    var testSet: Set<Int> = [1,1,2,3,3,3,3,4,4,4,5,5,8,4,5]
    print(testSet)
    
    
    // Посмотри по ссылке выше, можно узнавать является ли сет частью другого и другие подобные операции
    /*
     houseAnimals.isSubset(of: farmAnimals)
     // true
     farmAnimals.isSuperset(of: houseAnimals)
     // true
     farmAnimals.isDisjoint(with: cityAnimals)
     // true
     */
    
    // По сути это все по сетам
}

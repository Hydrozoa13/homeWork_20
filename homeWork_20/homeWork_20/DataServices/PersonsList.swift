//
//  PersonsList.swift
//  homeWork_20
//
//  Created by Евгений Лойко on 13.09.23.
//

import Foundation

class PersonsList {
    
     static let namesArray = ["Андрей", "Сергей", "Игнат", "Савелий",
                      "Станислав", "Владимир", "Кирилл", "Денис",
                      "Павел", "Евгений"]
    
     static let surnamesArray = ["Кирилленко", "Яскевич", "Павлов", "Назаров",
                         "Мартыненко", "Капустин", "Блинцов", "Матусевич",
                         "Кухта", "Мазель"]
    
     static let emailsArray = ["cheese@mail.com", "book@mail.com", "laptop@mail.com",
                       "man@mail.com", "game@mail.com", "gun@mail.com",
                       "limon@mail.com", "badboy@mail.com",
                       "danzel@mail.com", "orzy@mail.com"]
    
     static let numbersArray = ["+375445762315", "+375257462746", "+375298463867",
                        "+375441123242", "+375256667564", "+375298796711",
                        "+375443343231", "+375259045623",
                        "+375297565645", "+375448346735"]
    
    static var personsArray: [Person] = []
    
    static func makePersonsList() {
        for index in 0 ... namesArray.count - 1 {
            let person = Person(name: namesArray[index],
                                surname: surnamesArray[index],
                                email: emailsArray[index],
                                number: numbersArray[index])
            personsArray.append(person)
        }
    }
}

//
//  User.swift
//  Homework 6
//
//  Created by Владислав Клунный on 01.08.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserInformation() -> User {
        User(login: "User",
             password: "Hey",
             person: Person.getPersonInformation())
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let position: Position
    let bio: String
    
    static func getPersonInformation() -> Person {
        Person(name: "Vladislav",
               surname: "Klunnyi",
               company: "BIKO",
               position: .guide,
               bio: "Приветсвую! меня зовут Владислав!!! У меня в этой домашке получилось очень много повторяющегося кода, задачу вроде выполнил, но как-то не так.")
    }
}

enum Position: String {
    case painter = "Painter"
    case guide = "Guide"
    
}


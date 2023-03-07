//
//  DataStore.swift
//  ContactList
//
//  Created by Anton Kuzmin on 03.03.2023.
//

import Foundation

final class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Arthur",
        "John",
        "Dutch",
        "Abigail",
        "Micah",
        "Sadie",
        "Josiah",
        "Hosea",
        "Gareth",
        "Mary"
    ]
    
    let surnames = [
        "Morgan",
        "Marston",
        "van der Linde",
        "Roberts",
        "Bell",
        "Adler",
        "Blackwater",
        "Matthews",
        "Braithwaite",
        "Linton"
    ]
    
    let phones = [
        "6147413635",
        "1228607556",
        "8056332938",
        "2181714318",
        "5014555601",
        "1195344243",
        "9807439448",
        "6023287477",
        "5033527886",
        "7864646384"
    ]
    
    let emails = [
        "aaa@mail.com",
        "bbb@mail.com",
        "ccc@mail.com",
        "ddd@mail.com",
        "eee@mail.com",
        "fff@mail.com",
        "ggg@mail.com",
        "hhh@mail.com",
        "jjj@mail.com",
        "kkk@mail.com",
    ]
    
    private init() {}
}

//
//  Data.swift
//  faiaz_rahman_30024_tableView
//
//  Created by bjit on 6/12/22.
//

import Foundation

struct Dog {
    let name: String
    let imgId: String
}

extension Dog {
    static let dog = [Dog(name: "dog1", imgId: "dog1"),
                      Dog(name: "dog2", imgId: "dog2"),
                      Dog(name: "dog3", imgId: "dog3")]
                   
}


struct Cat {
    let name: String
    let imgId: String
}

extension Cat {
    static let cat = [Cat(name: "cat1", imgId: "cat1"),
                      Cat(name: "cat2", imgId: "cat2"),
                      Cat(name: "cat3", imgId: "cat3")]
                   
}

struct Bird {
    let name: String
    let imgId: String
}

extension Bird {
    static let bird = [Bird(name: "bird1", imgId: "bird1"),
                      Bird(name: "bird2", imgId: "bird2"),
                      Bird(name: "bird3", imgId: "bird3")]
                   
}

struct Dragon {
    let name: String
    let imgId: String
}

extension Dragon {
    static let dragon = [Dragon(name: "dragon1", imgId: "dragon1"),
                         Dragon(name: "dragon2", imgId: "dragon2"),
                         Dragon(name: "dragon3", imgId: "dragon3")]
                   
}

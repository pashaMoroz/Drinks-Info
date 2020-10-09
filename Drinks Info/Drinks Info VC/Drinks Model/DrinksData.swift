//
//  DrinksData.swift
//  Drinks Info
//
//  Created by Pavel Moroz on 09.10.2020.
//

import Foundation

class DrinksData {

    var name: String?
    var image:  String?
    var value: String?

    required init?() {}

    init(name: String, image: String, value: String) {
        self.name = name
        self.image = image
        self.value = value
    }
}

//
//  DishEntitiy.swift
//  BanchanCode
//
//  Created by jinseo park on 4/28/21.
//

import Foundation
import RealmSwift

class DishDB: Object {
    
    @objc dynamic var id: Int = -1
    @objc dynamic var name: String = ""
    @objc dynamic var contents: String = ""
    @objc dynamic var imageURL: String = ""
    @objc dynamic var categoryName: String = ""
    let prices = List<Int>()
    let badges = List<String>()

    convenience init(id: Int, name: String, contents: String, imageURL: String, categoryName: String) {
        self.init()
        self.id = id
        self.name = name
        self.contents = contents
        self.imageURL = imageURL
        self.categoryName = categoryName
    }
    
    override class func primaryKey() -> String? {
        return "id"
    }
}

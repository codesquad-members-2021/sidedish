//
//  DishEntitiy.swift
//  BanchanCode
//
//  Created by jinseo park on 4/28/21.
//

import Foundation
import RealmSwift

//Dish가 이미 Entitiy안에 있고 struct로 되어있어서 @objc dynamic var을 쓰지 못합니다.
//따라서 DishDB를 먼저 이용해보았습니다.

class DishDB: Object {
    
    //primary key
    @objc dynamic var id: Int = -1 //나중에 쓸 예정
    @objc dynamic var name: String = ""
    @objc dynamic var contents: String = ""
    @objc dynamic var imageURL: String = ""
    
    let prices = List<Int>()
    let badges = List<String>()

    convenience init(id: Int, name: String, contents: String, imageURL: String) {
        self.init()
        self.id = id
        self.name = name
        self.contents = contents
        self.imageURL = imageURL
    }
    override class func primaryKey() -> String? {
        return "id"
    }
    
}

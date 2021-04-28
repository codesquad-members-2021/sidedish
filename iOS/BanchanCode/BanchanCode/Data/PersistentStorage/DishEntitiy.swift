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
    
//    @objc dynamic var id: Int = -1 나중에 쓸 예정
    @objc dynamic var name: String = ""
    
    @objc dynamic var contents: String = ""
//    @objc dynamic var description: String = ""
    //Getter for 'description' with Objective-C selector 'description' conflicts with getter for 'description' from superclass 'RealmSwiftObject' with the same Objective-C selector
    @objc dynamic var imageURL: String = ""
//    @objc dynamic var prices: [Int] = [] 테이블에 배열을 넣는
//    @objc dynamic var badges: [String] = []
}

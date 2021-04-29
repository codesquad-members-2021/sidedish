//
//  DishDetailDB.swift
//  BanchanCode
//
//  Created by jinseo park on 4/29/21.
//

import Foundation
import RealmSwift

class DishDetailDB: Object {
    
    @objc dynamic var id: Int = -1 //primary key
    @objc dynamic var name: String = ""
    @objc dynamic var contents: String = ""
    @objc dynamic var stock: Int = 0
    @objc dynamic var point: Int = 0
    @objc dynamic var deliveryInfo: String = ""
        
    let prices = List<Int>()
    let badges = List<String>()
    let thumbImages = List<String>()
    let detailImages = List<String>()

    convenience init(id: Int, name: String, contents: String, stock: Int, point: Int, deliveryInfro: String) {
        self.init()
        self.id = id
        self.name = name
        self.contents = contents
        self.stock = stock
        self.point = point
        self.deliveryInfo = deliveryInfo
    }
    
    override class func primaryKey() -> String? {
        return "id"
    }
}

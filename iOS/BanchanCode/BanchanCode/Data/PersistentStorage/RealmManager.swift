//
//  RealmManager.swift
//  BanchanCode
//
//  Created by jinseo park on 4/28/21.
//

import RealmSwift
import Foundation

private protocol RealmOperations {
    func add(dishesItem: [DishesItemViewModel], categoryName: String)
    func get(categryName: String) -> [DishesItemViewModel]
}

class RealmManager: RealmOperations {
    
    let realm = try! Realm()
    
    func add(dishesItem: [DishesItemViewModel], categoryName: String) { //dish 정보를 받아와서 dto?작업 후 데이터베이스에 저장한다.
        dishesItem.forEach{ item in
            //이미 primaryKey가 존재한다면 write를 할 시 에러가 난다.
            if (realm.object(ofType: DishDB.self, forPrimaryKey: item.dish.id) == nil) {
                let dishDB = DishDB(id: item.dish.id, name: item.dish.name, contents: item.dish.description, imageURL: item.dish.imageURL, categoryName: categoryName)
                item.dish.prices.forEach {
                    dishDB.prices.append($0)
                }
                item.dish.badges.forEach {
                    dishDB.badges.append($0)
                }
                try! realm.write {
                    realm.add(dishDB)
                }
            }
        }
    }
    
    func get(categryName: String) -> [DishesItemViewModel] {
        var dishItems = [DishesItemViewModel]()
        let dishes = realm.objects(DishDB.self).filter("categoryName == %@",categryName)
        
        dishes.forEach{ dishDB in
            let dish = Dish(id: dishDB.id, name: dishDB.name, description: dishDB.contents, imageURL: dishDB.imageURL, prices: Array(dishDB.prices), badges: Array(dishDB.badges))
            dishItems.append(DishesItemViewModel(dish: dish))
        }
        return dishItems
        
    }
    
    
}

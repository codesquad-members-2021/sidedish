//
//  RealmManager.swift
//  BanchanCode
//
//  Created by jinseo park on 4/28/21.
//

import RealmSwift
import Foundation

private protocol RealmOperations {
    func addDishes(items: [DishesItemViewModel], categoryName: String)
    func getDishes(categryName: String) -> Dishes
}

class RealmManager: RealmOperations {
    let realm = try! Realm()
    
    func addDishes(items: [DishesItemViewModel], categoryName: String) {
        items.forEach { item in
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
    
    func getDishes(categryName: String) -> Dishes {
        
        var dishItems = Dishes(dishes: [])
        let dishes = realm.objects(DishDB.self).filter("categoryName == %@", categryName)
        
        dishes.forEach{ dishDB in
            let dish = Dish(id: dishDB.id, name: dishDB.name, description: dishDB.contents, imageURL: dishDB.imageURL, prices: Array(dishDB.prices), badges: Array(dishDB.badges))
            dishItems.dishes.append(dish)
        }
        return dishItems
    }
}

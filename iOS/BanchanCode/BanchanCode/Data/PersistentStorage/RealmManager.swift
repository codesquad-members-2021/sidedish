//
//  RealmManager.swift
//  BanchanCode
//
//  Created by jinseo park on 4/28/21.
//

import RealmSwift
import Foundation

private protocol RealmOperations {
    func addDishes(dishesItem: [DishesItemViewModel], categoryName: String)
    func addDishDetail(disheDetail: DishDetail)
    func getDishes(by categryName: String) -> [DishesItemViewModel]
    func getDishesID(by id: Int) -> DishDetail?
    
}

class RealmManager: RealmOperations {
    
    let realm = try! Realm()
    
    func addDishes(dishesItem: [DishesItemViewModel], categoryName: String) { //dish 정보를 받아와서 dto?작업 후 데이터베이스에 저장한다.
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
    
    func addDishDetail(disheDetail: DishDetail) {
        if (realm.object(ofType: DishDetailDB.self, forPrimaryKey: disheDetail.id) == nil) {
        
            let dishDetailDB = DishDetailDB(id: disheDetail.id, name: disheDetail.name!, contents: disheDetail.description!, stock: disheDetail.stock!, point: disheDetail.point!, deliveryInfro: disheDetail.deliveryInfo!)

            disheDetail.badges?.forEach {
                dishDetailDB.badges.append($0)
            }
            disheDetail.detailImages?.forEach {
                dishDetailDB.detailImages.append($0)
            }
            disheDetail.prices?.forEach {
                dishDetailDB.prices.append($0)
            }
            
            try! realm.write {
                realm.add(dishDetailDB)
            }
        }
    }
    
    func getDishes(by categryName: String) -> [DishesItemViewModel] {
        var dishItems = [DishesItemViewModel]()
        let dishes = realm.objects(DishDB.self).filter("categoryName == %@",categryName)
        
        dishes.forEach{ dishDB in
            let dish = Dish(id: dishDB.id, name: dishDB.name, description: dishDB.contents, imageURL: dishDB.imageURL, prices: Array(dishDB.prices), badges: Array(dishDB.badges))
            dishItems.append(DishesItemViewModel(dish: dish))
        }
        return dishItems

    }
    
    func getDishesID(by id: Int) -> DishDetail? {
        let disheDetail = realm.object(ofType: DishDetailDB.self, forPrimaryKey: id)
        print(disheDetail)
        return DishDetail(id: disheDetail!.id, name: disheDetail?.name, description: disheDetail?.contents, prices: Array(disheDetail!.prices), badges: Array(disheDetail!.badges), stock: disheDetail?.stock, point: disheDetail?.point, deliveryInfo: disheDetail?.deliveryInfo, thumbImages: Array(disheDetail!.thumbImages), detailImages: Array(disheDetail!.detailImages))
    }
    
    
}

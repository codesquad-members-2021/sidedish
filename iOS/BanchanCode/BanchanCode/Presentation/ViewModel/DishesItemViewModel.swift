//
//  DishListItemViewModel.swift
//  BanchanCode
//
//  Created by Song on 2021/04/23.
//

import Foundation

struct DishesItemViewModel {
    let dish: Dish
    var lastPrice: Int = 0
    var originalPrice: Int? = nil
    
    init(dish: Dish) {
        self.dish = dish
        self.lastPrice = dish.prices.last ?? 0
        self.originalPrice = getOriginalPrice(from: dish.prices)
    }
    
    private func getOriginalPrice(from prices: [Int]) -> Int? {
        return prices.count > 1 ? prices.first : nil
    }
}

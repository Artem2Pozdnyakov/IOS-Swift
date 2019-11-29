//
//  L6_ArtemPozdnyakov
//  Created by admin on 25.10.2019.
//  Copyright © 2019 Artem Pozdnyakov. All rights reserved.
//

import Foundation


class Apples: Selection{
    var grade: String
    var weight: Double
    var year: Int
    
    init(grade: String, weight: Double, year: Int) {
        self.grade = grade
        self.weight = weight
        self.year = year
    }
}

protocol Selection{
    var weight: Double{get set}
}

struct Stack<T> {
    
    var basket = [T]()
    var newBasket = [T]()
    
    mutating func push(object: T){
        basket.append(object)
    }
    
    mutating func pop(object: T) -> T {
      return  basket.removeLast()
    }
    
    func filter(closure: (T) -> Bool) -> [T] {
        var result = [T]()
        for element in basket{
            if closure(element){
                result.append(element)
            }
        }
        return result
    }
    
    func count() -> Int {
        return basket.count
    }
}

var antonovka = Apples(grade: "Antonovka", weight: 0.3, year: 2019)
var sesoze = Apples(grade: "Sesonye", weight: 0.25, year: 2019)
var gala = Apples(grade: "Gala", weight: 0.23, year: 2019)

var stack = Stack<Apples>()
stack.push(object: antonovka)
stack.push(object: sesoze)
stack.push(object: gala)

print(stack.count())

print(stack.filter { (Apples) -> Bool in
    return Apples.weight >= 0.25
})


//
//  Created by admin on 15.10.2019.
//  Copyright © 2019 Artem Pozdnyakov. All rights reserved.
//


import Foundation


struct CarOne {
    var brand: String
    var year: Int
    var trunk: Double
    var engine: String
    var window: String
    var filledTrunk: Double
    
    
    enum engineState: String {
        case start = "Запущен"
        case stop = "Заглушон"
    }

    enum windowState: String {
        case open = "Открыто"
        case close = "Закрыто"
    }

    enum trunkState: String {
        case full = "Загружен"
        case empty = "Разгружен"
    }
    
    mutating func actionEngine(engine: String){
        self.engine = engine
        print("Двигатель в Mercedes: " + engine)
    }
    
    mutating func actionWindow(window: String){
        self.window = window
           print("Окно в Mercedes: " + window)
       }
    mutating func actionFilledTrunk(filledTrunk: Double){
        self.filledTrunk = filledTrunk
              print("Место в багажнике Mercedes, осталось: \(filledTrunk)")
          }
   

}



struct CarTwo {
    var brand: String
    var year: Int
    var trunk: Double
    var engine: String
    var window: String
    var filledTrunk: Double
    
    
    enum engineState: String {
        case start = "Запущен"
        case stop = "заглушен"
    }

    enum windowState: String {
        case open = "Открыто"
        case close = "Закрыто"
    }

    enum trunkState: String {
        case full = "Загружен"
        case empty = "Разгружен"
    }
    mutating func actionEngine(engine: String){
           self.engine = engine
           print("Двигатель в Man: " + engine)
       }
       
       mutating func actionWindow(window: String){
           self.window = window
              print("Окно в Man: " + window)
          }
       mutating func actionFilledTrunk(filledTrunk: Double){
           self.filledTrunk = filledTrunk
                 print("Место в кузове Man, осталось: \(filledTrunk)")
             }
      

}





var mercedes = CarOne(brand: "Mercedes", year: 2015, trunk: 6.23, engine: "Заглушен", window: "Открыто", filledTrunk: 2.2 )
var man = CarTwo(brand: "Man", year: 2011, trunk: 410000, engine: "Запущен", window: "Закрыто", filledTrunk: 25000)

print(mercedes)

mercedes.actionEngine(engine: "Запущен")
mercedes.actionWindow(window: "Закрыто")
mercedes.actionFilledTrunk(filledTrunk: 0.2)

print(man)
man.actionEngine(engine: "Заглушен")
man.actionWindow(window: "Открыто")
man.actionFilledTrunk(filledTrunk: 14500)



//Не уверен в правильности выполнения задания, плохо понял тему



//
//  Created by admin on 17.10.2019.
//  Copyright © 2019 Artem Pozdnyakov. All rights reserved.
//

import Foundation

    enum EngineState {
    case start
    case stop
    }

    enum WindowState: String {
    case open = "Открыто"
    case close = "Закрыто"
    }

    enum TrunkState: String {
    case full = "Загружен"
    case empty = "Разгружен"
    }

    enum Support: String{
    case nominated = "Выдвинуты"
    case tukedAway = "Убраны"
    
    }

    enum Roff: String{
    case open = "Открыта"
    case close = "Закрыта"
    }


    
class Car {
    
    var brand: String
    var year: Int
    var engine: String
    var window: String
    var filledTrunk: Double
    
    init(brand: String, year: Int, engine: String, window: String, filledTrunk: Double) {
        self.brand = brand
        self.year = year
        self.engine = engine
        self.window = window
        self.filledTrunk = filledTrunk
    }
    
    func actionEngine(engine: EngineState){
        EngineState.start
    }
}

class SportCar: Car{
   var foldingRoof: String
    
        init(brand: String, year: Int, engine: String, window: String, filledTrunk: Double, foldingRoof: String) {
        self.foldingRoof = foldingRoof
        super.init(brand: "Mercedes", year: 2015, engine: "Заглушен", window: "Закрыты", filledTrunk: 5.6)
    }
    
    override func actionEngine(engine: String) {
        foldingRoof = "Открыта"
    }
    
    
}

class TrunkCa: Car{
    var support: String
    
     init(brand: String, year: Int, engine: String, window: String, filledTrunk: Double, support: String) {
           self.support = support
        super.init(brand: "Man", year: 2005, engine: "Запущен", window: "Открыты", filledTrunk: 25.000)
       }
    
    override func actionEngine(engine: String) {
        support = "Задвинуты"
    }
       
}




var mercedes = SportCar(brand: "Mercedes", year: 2015, engine: "Заглушен", window: "Закрыты", filledTrunk: 5.6, foldingRoof: "Закрыта")

var man = TrunkCa(brand: "Man", year: 2005, engine: "Запущен", window: "Открыты", filledTrunk: 25.000, support: "Выдвинуты")




print("Стойки на Man: " + man.support)
man.actionEngine(engine: "Задвинуты")
print("Стойки на Man: " + man.support)


print("Крыша в Mercedes: " + mercedes.foldingRoof)
mercedes.actionEngine(engine: "Открыта")
print("Крыша в Mercedes: " + mercedes.foldingRoof)


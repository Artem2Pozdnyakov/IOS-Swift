//

//  Created by admin on 22.10.2019.
//  Copyright © 2019 Artem Pozdnyakov. All rights reserved.
//

import Foundation


enum EngineState {
case start
case stop
}

enum WindowState {
case open
case close
}

enum FoldingRoof {
    case open
    case close
}

enum Support {
    case active
    case notActive
}




protocol Car {
      var brand: String { get }
      var year: Int { get }
      var engine: EngineState { get }
      var window: WindowState { get }
    
    func actionEngine()
    
}

extension Car {
    func stateEngine(){
        EngineState.start
    }
}

extension Car {
    func stateWindow(){
        WindowState.open
    }
}

class sportCar: Car {
    var engine: EngineState
    var brand: String
    var year: Int
    var window: WindowState
    var foldingRoof: FoldingRoof
    
    init(brand: String, year: Int, engine: EngineState, window: WindowState, foldingRoof: FoldingRoof ) {
        self.brand = brand
        self.year = year
        self.engine = EngineState.start
        self.window = WindowState.open
        self.foldingRoof = FoldingRoof.close
    }
   
    func actionEngine() {
        FoldingRoof.open
        print("Крыша в спроткаре открыта")
    }
    
    
}


class trunkCar: Car {
    var brand: String
    var year: Int
    var engine: EngineState
    var window: WindowState
    var support: Support

    
    init(brand: String, year: Int, engine: EngineState, window: WindowState, support: Support) {
        self.brand = brand
        self.year = year
        self.engine = EngineState.start
        self.window = WindowState.open
        self.support = Support.active
    }
   
    func actionEngine() {
        Support.active
        print("Стойки грузовика активны")
    }
    
    
}
 
extension sportCar: CustomStringConvertible {
    var description: String {
        return brand + " " + String(year)
    }
    
    
}

extension trunkCar: CustomStringConvertible {
    var description: String {
        return brand + " " + String(year)
    }
    
    
}



var nissan = sportCar(brand: "Nissan", year: 2000, engine: .start, window: .open, foldingRoof: .open)
var man = trunkCar(brand: "Man", year: 2014, engine: .start, window: .close, support: .active)

print(nissan)
print(man)


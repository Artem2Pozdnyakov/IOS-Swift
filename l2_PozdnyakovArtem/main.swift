
import Foundation
// 1



func evenNumber(valeu: Int){
    if valeu % 2 == 0 {
        print("Число \(valeu): Чётное")
    } else{
        print("Число \(valeu): Нечётное")
    }
}

evenNumber(valeu: 24)
evenNumber(valeu: 467)
evenNumber(valeu: 268)

//2

func evenNamberThree(valeu: Int){
    if valeu % 3 == 0 {
           print("Число \(valeu): Делится на 3 без остатка")
       } else{
           print("Число \(valeu): Не делится на 3 без остатка")
       }
}


evenNamberThree(valeu: 8654)
evenNamberThree(valeu: 36)
evenNamberThree(valeu: 97)

 
//3

var array = (0...100)
var filted = array.filter{$0 % 2 != 0}
var notFree = filted.filter{$0 % 3 != 0}
print(notFree)
//





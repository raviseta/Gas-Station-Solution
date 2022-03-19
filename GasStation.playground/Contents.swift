import UIKit

func GasStation(_ strArr: [String]) -> String {
    
    var strGasArray = strArr
    let numberOfStation : Int = Int(strGasArray.remove(at: 0))!
    
    for i in 0..<numberOfStation{
        var startIndex = i
        var count = 0
        var inputGas = 0
        
        while count < numberOfStation{
            let station1 = strGasArray[startIndex].split(separator: ":")
            inputGas = inputGas + Int(station1[0])!
            let gasNeed = Int(station1[1])!
            
            if inputGas < gasNeed{
                break
            }else{
                inputGas = inputGas - gasNeed
                startIndex = startIndex + 1 == numberOfStation ? 0 : startIndex + 1
                count = count + 1
            }
            
        }
        if count == numberOfStation{
            return String(i+1)
        }
    }
    
    
    return "impossible"
    
    
}
var strArray = ["4","3:1","2:2","1:2","0:1"];

var final = GasStation(strArray)
print(final)

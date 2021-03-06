import Foundation

let number = "1337"

func convert(string: String) -> Int? {
  
    var total = 0
    
    let valueMap = [
        "1" as Character: 1,
        "2": 2,
        "3": 3,
        "7": 7,
    ]
    
    // 1337 = 1*10^3 + 3*10^2 + 3*10^1 + 7*10^0
    
    for (i,c) in string.enumerated() {
        let exponent = string.count - i - 1
//        print(exponent)
//        print(valueMap[c])
        if let value = valueMap[c] {
            let num = Double(value) * pow(10, Double(exponent))
            total += Int(num)
        }
        
    }
    
    return total
    
}

convert(string: number)

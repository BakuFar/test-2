import Foundation

//Создать программу, которая вручную отсортирует числа, введенные используя readLine (15 баллов)

//let num1 = Int(readLine()!)!
//let num2 = Int(readLine()!)!
//let num3 = Int(readLine()!)!
//let num4 = Int(readLine()!)!
//let num5 = Int(readLine()!)!
//let num6 = Int(readLine()!)!
//let num7 = Int(readLine()!)!
//let num8 = Int(readLine()!)!
//let num9 = Int(readLine()!)!
//let num10 = Int(readLine()!)!
//let num11 = Int(readLine()!)!
//let num12 = Int(readLine()!)!
//let num13 = Int(readLine()!)!
//let num14 = Int(readLine()!)!
//let num15 = Int(readLine()!)!
//var array: [Int] = []
//
//array.append(num1)

//Создать программу, которая посчитает количество пробелов в тексте и количество символов (15 баллов)

var countCharacter = 0
var countSpace = 0
let string = readLine()!

for i in string {
    if i == " " {
        countSpace += 1
    }
    else {
        countCharacter += 1
    }
}
//Создать программу, которая сгруппирует слова, введенные в readLine по первой букве в отдельные массивы внутри одного массива (15 баллов)

var totalArray: [[String]] = []

func addToArray(name: String) {
    var found = false
    var array: [String] = []
    let first = name.first!
    
    for (index, item) in totalArray.enumerated() {
        for (index2, item2) in item.enumerated() {
            for item3 in item2 {
                if item3 == first && index2 == 0 && found == false {
                    totalArray[index].append(name)
                    found = true
                    break
                }
            }
        }
    }
    
    if found == false {
        array.append(String(first))
        array.append(name)
        totalArray.append(array)
    }
}

let name = readLine()!
addToArray(name:name)

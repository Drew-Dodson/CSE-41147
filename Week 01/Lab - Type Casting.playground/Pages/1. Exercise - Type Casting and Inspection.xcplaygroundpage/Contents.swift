/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var myCollection: [Any] = [1, 1.5, "Hello", "POTATO", false, 42]
print(myCollection)
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for item in myCollection {
    if let stringItem = item as? String {
        print("The string has a value of \(stringItem)")
    }
    if let integerItem = item as? Int {
        print("The integer has a value of \(integerItem)")
    }
    if let doubleItem = item as? Double {
        print("The double has a value of \(doubleItem)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let myDictionary: [String: Any] = ["Height" : 6, "DoorIsOpen" : false, "CentimetersPerInch" : 2.5, "Name" : "John", "Width" : "4"]
for item in myDictionary {
    print("Key: \(item.key) - Value: \(item.value)")
}
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for item in myDictionary {
    if let _ = item.value as? String {
        total += 1
    }
    if let doubleItem = item.value as? Double {
        total += doubleItem
    }
    if let integerItem = item.value as? Int {
        total += Double(integerItem)
    }
    if let boolItem = item.value as? Bool {
        if boolItem == true {
            total += 2
        } else {
            total += 1
        }
    }
}
print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0
for item in myDictionary {
    if let stringItem = item.value as? String {
        if let convertedString = Double(stringItem) {
            total2 += convertedString
        }
    }
    if let doubleItem = item.value as? Double {
        total2 += doubleItem
    }
    if let integerItem = item.value as? Int {
        total2 += Double(integerItem)
    }
}
print(total2)
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)

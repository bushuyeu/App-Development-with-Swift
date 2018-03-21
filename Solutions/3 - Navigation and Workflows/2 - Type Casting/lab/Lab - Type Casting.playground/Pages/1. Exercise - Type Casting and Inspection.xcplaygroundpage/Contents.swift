/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
let collection: [Any] = [45.45, 3, "", true , false, "0"]
print(collection)

for collectionItem in collection {
    if let integer = collectionItem as? Int {
        print("the integer has a value of \(integer)")
    } else if let doubleValue = collectionItem as? Double {
        print("the double has a value of \(doubleValue)")
    } else if let stringValue = collectionItem as? String {
        print("The string has a value of \(stringValue).")
    } else if let boolValue = collectionItem as? Bool {
        print("The boolian has a value of \(boolValue)")
    } else {
        print("error")
    }
}
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */


/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
let dictionary: [String: Any] = ["1": 0.00, "two": 0.20, "3": 3, "four": "4", "5": "true" ]

/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for dicItem in dictionary.values {
    if let integer = dicItem as? Int {
        total += Double(integer)
        print(total)
    } else if let doubleValue = dicItem as? Double {
        total += doubleValue
        print(total)
    } else if let stringValue = dicItem as? String {
        total += 1
        print(total)
    } else if let boolValue = dicItem as? Bool {
        total += 2
        print(total)
    } else {
        print("error")
    }
    print("_")
}

/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0
for dicItem in dictionary.values {
    if let integer = dicItem as? Int {
        total2 += Double(integer)
        
        print("int value: \(integer)")
        print("total: \(total2)")
        
    } else if let doubleValue = dicItem as? Double {
        total2 += doubleValue
        
        print("double value: \(doubleValue)")
        print("total: \(total2)")
        
    } else if let stringValue = dicItem as? String {
        if let stringValueToDouble = Double(stringValue) {
            total2 += stringValueToDouble
            
            print("sting value in double: \(stringValueToDouble)")
        }
        
        print("sting value: \(stringValue)")
        print("total: \(total2)")
        
    } else if let boolValue = dicItem as? Bool {
        
        print("boolian value: \(boolValue)")
        print("total: \(total2)")
        
    } else {
        
        print("error")
        
    }
    
    print("__")
}
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)

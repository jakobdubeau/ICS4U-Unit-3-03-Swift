import Foundation

// Error
enum MyError: Error {
    case invalidInteger(String)
}

let aStack: MrCoxallStack = MrCoxallStack()
let addedNewNumber: String = "Added"
let popNumber: String = "Popped "
let newStack: String = "\nNew Stack"
let failedPush: String = "Cannot add to stack, it is not an integer"

print("Initial stack")
aStack.showStack()

print("\nPush\n")

do {
    print("Enter the first Number: ")
    if let number: Int = Int(readLine()!) {
        aStack.push(pushNumber: number)
        print(addedNewNumber, number)
    } else {
       throw MyError.invalidInteger("Error")
    }
    print(newStack)
    aStack.showStack()
} catch {
    print(failedPush)
}

do {
    print("Enter the second Number: ")
    if let number: Int = Int(readLine()!) {
        aStack.push(pushNumber: number)
        print(addedNewNumber, number)
    } else {
        throw MyError.invalidInteger("Error")
    }
    print(newStack)
    aStack.showStack()
} catch {
    print(failedPush)
}

print("\nPop\n")

let poppedNumber: Int = aStack.pop()
if poppedNumber != -1 {
    print(popNumber, poppedNumber)
    print(newStack)
    aStack.showStack()
}
print("\nDone.")

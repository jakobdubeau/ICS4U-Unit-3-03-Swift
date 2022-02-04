/**
* The stack program uses OOP to create a stack.
*
* @author  Jakob
* @version 1.0
* @since   2020-12-07
*
*/

class MrCoxallStack {
    var stackAsArray: [Int] = []

    func push(pushNumber: Int) {
        stackAsArray.insert(pushNumber, at: 0)
    }

    func pop() -> Int {
        let returnValue: Int
        if stackAsArray.count > 0 {
            let poppedNumber: Int = stackAsArray[0]
            stackAsArray.remove(at: 0)
            returnValue = poppedNumber
        } else {
            print("Stack is empty, cannot pop")
            returnValue = -1
        }
        return returnValue
    }

    func showStack() {
        print(stackAsArray)
    }
}

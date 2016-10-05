/*
  There are two ways to create a fibonacci sequence:
    1. Create a fibonacci sequence with n values.
    2. Create a fibonacci sequence with the last value no more than n.
*/
public func fibonacciSequence(count: Int) -> [Int] {
  guard count > 2 else {
    switch count {
      case 2:
        return [1,1]
      case 1:
        return [1]
      default:
        return [Int]()
    }
  }

  var fib : [Int] = [1,1]
  for i in 2...count - 1 {
    fib.append(fib[i - 1] + fib[i - 2])
  }

  return fib
}

public func fibonacciSequence(maximum: Int) -> [Int] {
  guard maximum > 0 else {
    return [Int]()
  }

  var shouldContinue : Bool = true
  var fib : [Int] = [1,1]
  repeat {
    let nextVal : Int = fib[fib.count - 1] + fib[fib.count - 2]
    if nextVal <= maximum {
      fib.append(nextVal)
    } else {
      shouldContinue = false
    }
  } while shouldContinue == true

  return fib
}

//This is your basic recursive calculator.
//Use large numbers at your own risk, and mind your stack!
public func fibonacciValue(_ number: Int) -> Int {
  guard number > 0 else {
    return 0
  }

  switch number {
    case 1:
      return 1
    default:
      return fibonacciValue(number - 1) + fibonacciValue(number - 2)
  }
}

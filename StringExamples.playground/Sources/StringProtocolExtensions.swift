import Foundation

public extension StringProtocol {

    ///   String Offeset
    ///
    ///   Usage
    ///   let helloWorld = "Hello World!"
    ///   helloWorld[4]  ==> returns o
    ///
    /// - Parameter offset: Date format to be used.
    /// - Returns: Character

    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }

    ///   Get SubString using a Range
    ///
    ///   Usage
    ///   let helloWorld = "Hello World!"
    ///   helloWorld[0..<5]  ==> returns Hello
    ///
    /// - Parameter offset: Date format to be used.
    /// - Returns: Substring

    subscript(range: Range<Int>) -> SubSequence {
        let startIndex = index(self.startIndex, offsetBy: range.lowerBound)
        return self[startIndex..<index(startIndex, offsetBy: range.count)]
    }

    //   Get SubString using a Closed Range
    ///
    ///   Usage
    ///   let helloWorld = "Hello World!"
    ///   helloWorld[0...4]  ==> returns Hello
    ///
    /// - Parameter rage: Date format to be used.
    /// - Returns: Substring

    subscript(range: ClosedRange<Int>) -> SubSequence {
        let startIndex = index(self.startIndex, offsetBy: range.lowerBound)
        return self[startIndex..<index(startIndex, offsetBy: range.count)]
    }

    //   Get SubString using a PartialRangeFrom
    ///
    ///   Usage
    ///   let helloWorld = "Hello World!"
    ///   helloWorld[6...]  ==> returns World!
    ///
    /// - Parameter rage: Date format to be used.
    /// - Returns: Substring

    subscript(range: PartialRangeFrom<Int>) -> SubSequence {
        self[index(startIndex, offsetBy: range.lowerBound)...]
    }

    //   Get SubString using a PartialRangeThrough
    ///
    ///   Usage
    ///   let helloWorld = "Hello World!"
    ///   helloWorld[...5]  ==> returns World!
    ///
    /// - Parameter rage: Date format to be used.
    /// - Returns: Substring

    subscript(range: PartialRangeThrough<Int>) -> SubSequence {
        self[...index(startIndex, offsetBy: range.upperBound)]
    }

//    subscript(range: PartialRangeUpTo<Int>) -> SubSequence {
//        self[..<index(startIndex, offsetBy: range.upperBound)]
//    }
}


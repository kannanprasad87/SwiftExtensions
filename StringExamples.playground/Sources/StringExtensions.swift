import Foundation

public extension String {
    
    ///   Returns true if receiver string characters are all whitespaces and newline characters.
    ///
    ///   Usage
    ///
    ///   "  ".isBlank              returns true
    ///   "\t\n\r\n".isBlank        returns true
    ///   "\t\n Hello".isBlank      returns false
    ///
    /// - Parameter to: A position indicates the end position of substring
    /// - Returns: boolean
    
    var isBlank: Bool {
        return trimmingCharacters(in:.whitespacesAndNewlines).isEmpty
    }
    
    ///   prefix sub string to an existing String.
    ///
    ///   Usage
    ///
    ///   "  ".isBlank              returns true
    ///   "\t\n\r\n".isBlank        returns true
    ///   "\t\n Hello".isBlank      returns false
    ///
    /// - Parameter prefix: Substring to be prefixed to a String.
    /// - Returns: String
    
    func withPrefix(_ prefix: String) -> String {
        if self.hasPrefix(prefix) { return self }
        return "\(prefix)\(self)"
    }
    
    ///   Convert String to Date
    ///
    ///   Usage
    ///
    ///   let dateString: String = "2020-10-18 12:34:00"
    ///   dateString.toDateWithFormat("yyyy-MM-dd HH:mm:ss")
    ///
    /// - Parameter format: Date format to be used.
    /// - Returns: Date
    
    func toDateWithFormat(_ format: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.timeZone = TimeZone.current
        return dateFormatter.date(from: self)
    }
}



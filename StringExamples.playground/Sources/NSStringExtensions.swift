import Foundation

public extension NSString {
    @objc var isBlank: Bool {
        return (self as String).isBlank
    }

    @objc func withPrefix(_ prefix: String) -> NSString {
        return (self as String).withPrefix(prefix) as NSString
    }

    @objc func toDateWithFormat(_ format: String) -> NSDate? {
        return (self as String).toDateWithFormat(format) as NSDate?
    }
}

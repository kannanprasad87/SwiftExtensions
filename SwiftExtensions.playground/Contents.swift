import Foundation

//String Extension Examples

// isBlank
"  ".isBlank
"\t\n\r\n".isBlank
"\t\n Hello".isBlank

let name:NSString = " "
name.isBlank

// withPrefix
let webUrl = "www.google.com"
webUrl.withPrefix("https://")

// toDateWithFormat(_ format: String)

let dateString: NSString = "2018-06-21 12:30:27"
dateString.toDateWithFormat("yyyy-MM-dd HH:mm:ss")

// String subscript for getting substrings

let helloWorld = "Hello World!"

helloWorld[4]
helloWorld[0...4]
helloWorld[0..<5]
helloWorld[6...]
helloWorld[...5]

helloWorld.stringByRemovingWhitespaces

var webServiceUrl:URL = URL(string: "www.google.com")!
webServiceUrl.appendQueryString(string: "apiVersion", value: "5").appendQueryString(string: "date", value: "24")



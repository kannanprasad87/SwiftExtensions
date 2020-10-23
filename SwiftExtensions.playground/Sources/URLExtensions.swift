import Foundation

public extension URL {


    ///   Append query string to a URL
    ///
    ///   Usage
    ///
    ///   var webServiceUrl:URL = URL(string: "www.google.com")!
    ///   webServiceUrl.appendQueryString(string: "apiVersion", value: "5")
    ///
    /// - Parameter string: key for query string
    ///   Parameter value: value for query string
    /// - Returns: URL

    func appendQueryString(string: String, value: String) -> URL {
        guard var urlComponents = URLComponents(string:absoluteString) else { return absoluteURL }
        var queryItems: [URLQueryItem] = urlComponents.queryItems ??  []
        let queryItem = URLQueryItem(name: string, value: value)
        queryItems.append(queryItem)
        urlComponents.queryItems = queryItems
        return urlComponents.url!
    }
    
}

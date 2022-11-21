import Foundation

public enum HTTPError: Int, Error {
    case badParameter = 400
    case accessTokenRequired = 401
    case invalidAccessToken = 402
    case accessDenied = 403
    case noMethod = 404
    case keyRequired = 405
    case accessTokenCompromised = 406
    case writeFailed = 407
    case duplicateRequest = 409
    case internalError = 500
    case throttleViolation = 502
    case temporarilyUnavailable = 503
}

public enum SortOrder: String {
    case ascending = "asc"
    case descending = "desc"
    
    public var queryItem: URLQueryItem {
        return URLQueryItem(name: "order", value: rawValue)
    }
}

public enum SortMetric: String {
    case activity
    case creation
    case votes
    case hot
    case week
    case month
    
    public var queryItem: URLQueryItem {
        return URLQueryItem(name: "sort", value: rawValue)
    }
}


public extension Date {
    public var timestamp: Int {
        return Int(self.timeIntervalSince1970)
    }
}

public struct API {
    let url = "https://api.stackexchange.com/2.3/"
    let version = 2.3
    
    public func getAnswers(
        page: Int? = nil,
        pageSize: Int? = nil,
        fromDate: Date? = nil,
        toDate: Date? = nil,
        order: SortOrder = .descending,
        min: Date? = nil,
        max: Date? = nil,
        sort: SortMetric = .activity,
        completion: @escaping ([Answer]?, Error?) -> Void
    ) {
        var url = URLComponents(string: "https://api.stackexchange.com/2.3/answers")!

        if let page = page {
            url.queryItems!.append(
                URLQueryItem(name: "page", value: String(page))
            )
        }
        
        if let pageSize = pageSize {
            url.queryItems!.append(
                URLQueryItem(name: "pagesize", value: String(pageSize))
            )
        }
        
        if let fromDate = fromDate {
            url.queryItems!.append(
                URLQueryItem(name: "fromdate", value: String(fromDate.timestamp))
            )
        }
        
        if let toDate = toDate {
            url.queryItems!.append(
                URLQueryItem(name: "todate", value: String(toDate.timestamp))
            )
        }
        
        url.queryItems!.append(order.queryItem)
        
        if let min = min {
            url.queryItems!.append(
                URLQueryItem(name: "min", value: String(min.timestamp))
            )
        }
        
        if let max = max {
            url.queryItems!.append(
                URLQueryItem(name: "max", value: String(max.timestamp))
            )
        }
        
        url.queryItems!.append(sort.queryItem)
        
        if let url = url.url {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        let answers = try decoder.decode([Answer].self, from: data)
                        completion(answers, nil)
                    } catch let error {
                        completion(nil, error)
                    }
                } else {
                    completion(nil, nil)
                }
            }.resume()
        } else {
            completion(nil, .none)
        }
    }
}

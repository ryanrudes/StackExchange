import XCTest
@testable import StackExchange

final class StackExchangeTests<T: Decodable>: XCTestCase {
    func test(_ json: String, dtype: T.Type) throws {
        let data = Data(json.utf8)
        let decoder = JSONDecoder()
        let _ = try decoder.decode(dtype, from: data)
    }
}

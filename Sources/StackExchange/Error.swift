import Foundation

/*
public struct Error: Codable {
    var description: String
    var errorID: Int
    var errorName: String

    public enum CodingKeys: String, CodingKey {
        case description
        case errorID = "error_id"
        case errorName = "error_name"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        description = try values.decode(String.self, forKey: .description)
        errorID = try values.decode(Int.self, forKey: .errorID)
        errorName = try values.decode(String.self, forKey: .errorName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(description, forKey: .description)
        try container.encode(errorID, forKey: .errorID)
        try container.encode(errorName, forKey: .errorName)
    }
}
*/

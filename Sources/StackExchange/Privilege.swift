import Foundation

public struct Privilege: Codable {
    var description: String
    var reputation: Int
    var shortDescription: String

    public enum CodingKeys: String, CodingKey {
        case description
        case reputation
        case shortDescription = "short_description"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        description = try values.decode(String.self, forKey: .description)
        reputation = try values.decode(Int.self, forKey: .reputation)
        shortDescription = try values.decode(String.self, forKey: .shortDescription)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(description, forKey: .description)
        try container.encode(reputation, forKey: .reputation)
        try container.encode(shortDescription, forKey: .shortDescription)
    }
}

import Foundation

public struct BadgeCount: Codable {
    var bronze: Int
    var gold: Int
    var silver: Int

    public enum CodingKeys: String, CodingKey {
        case bronze
        case gold
        case silver
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        bronze = try values.decode(Int.self, forKey: .bronze)
        gold = try values.decode(Int.self, forKey: .gold)
        silver = try values.decode(Int.self, forKey: .silver)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(bronze, forKey: .bronze)
        try container.encode(gold, forKey: .gold)
        try container.encode(silver, forKey: .silver)
    }
}

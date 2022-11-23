import Foundation

public struct Badge: Codable {
    public var awardCount: Int
    public var badgeID: Int
    public var badgeType: BadgeType
    public var description: String
    public var link: String
    public var name: String
    public var rank: Rank
    public var user: ShallowUser?
    
    public enum BadgeType: String, Codable {
        case named
        case tagBased = "tag_based"
    }
    
    public enum Rank: String, Codable {
        case gold
        case silver
        case bronze
    }

    enum CodingKeys: String, CodingKey {
        case awardCount = "award_count"
        case badgeID = "badge_id"
        case badgeType = "badge_type"
        case description
        case link
        case name
        case rank
        case user
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        awardCount = try values.decode(Int.self, forKey: .awardCount)
        badgeID = try values.decode(Int.self, forKey: .badgeID)
        badgeType = try values.decode(BadgeType.self, forKey: .badgeType)
        description = try values.decode(String.self, forKey: .description)
        link = try values.decode(String.self, forKey: .link)
        name = try values.decode(String.self, forKey: .name)
        rank = try values.decode(Rank.self, forKey: .rank)
        user = try values.decode(ShallowUser?.self, forKey: .user)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(awardCount, forKey: .awardCount)
        try container.encode(badgeID, forKey: .badgeID)
        try container.encode(badgeType, forKey: .badgeType)
        try container.encode(description, forKey: .description)
        try container.encode(link, forKey: .link)
        try container.encode(name, forKey: .name)
        try container.encode(rank, forKey: .rank)
        try container.encode(user, forKey: .user)
    }
}

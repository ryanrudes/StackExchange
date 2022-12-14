import Foundation

public struct Achievement: Codable {
    public var accountID: Int
    public var achievementType: AchievementType
    public var badgeRank: BadgeRank?
    public var creationDate: Date
    public var isUnread: Bool
    public var link: String
    public var onSite: Site
    public var reputationChange: Int?
    public var title: String
    
    public enum AchievementType: String, Codable {
        case badge
        case privlege
        case reputation
    }
    
    public enum BadgeRank: String, Codable {
        case gold
        case silver
        case bronze
    }

    enum CodingKeys: String, CodingKey {
        case accountID = "account_id"
        case achievementType = "achievement_type"
        case badgeRank = "badge_rank"
        case creationDate = "creation_date"
        case isUnread = "is_unread"
        case link
        case onSite = "on_site"
        case reputationChange = "reputation_change"
        case title
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        accountID = try values.decode(Int.self, forKey: .accountID)
        achievementType = try values.decode(AchievementType.self, forKey: .achievementType)
        badgeRank = try values.decode(BadgeRank?.self, forKey: .badgeRank)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        isUnread = try values.decode(Bool.self, forKey: .isUnread)
        link = try values.decode(String.self, forKey: .link)
        onSite = try values.decode(Site.self, forKey: .onSite)
        reputationChange = try values.decode(Int?.self, forKey: .reputationChange)
        title = try values.decode(String.self, forKey: .title)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(accountID, forKey: .accountID)
        try container.encode(achievementType, forKey: .achievementType)
        try container.encode(badgeRank, forKey: .badgeRank)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(isUnread, forKey: .isUnread)
        try container.encode(link, forKey: .link)
        try container.encode(onSite, forKey: .onSite)
        try container.encode(reputationChange, forKey: .reputationChange)
        try container.encode(title, forKey: .title)
    }
}

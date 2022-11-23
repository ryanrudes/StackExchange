import Foundation

public struct ShallowUser: Codable {
    public var acceptRate: Int?
    public var accountID: Int
    public var badgeCounts: BadgeCount
    public var displayName: String?
    public var link: String?
    public var profileImage: String?
    public var reputation: Int?
    public var userID: Int?
    public var userType: UserType

    public enum UserType: String, Codable {
        case unregistered
        case registered
        case moderator
        case teamAdmin = "team_admin"
        case doesNotExist = "does_not_exist"
    }
    
    enum CodingKeys: String, CodingKey {
        case acceptRate = "accept_rate"
        case accountID = "account_id"
        case badgeCounts = "badge_counts"
        case displayName = "display_name"
        case link
        case profileImage = "profile_image"
        case reputation
        case userID = "user_id"
        case userType = "user_type"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        acceptRate = try values.decode(Int?.self, forKey: .acceptRate)
        accountID = try values.decode(Int.self, forKey: .accountID)
        badgeCounts = try values.decode(BadgeCount.self, forKey: .badgeCounts)
        displayName = try values.decode(String?.self, forKey: .displayName)
        link = try values.decode(String?.self, forKey: .link)
        profileImage = try values.decode(String?.self, forKey: .profileImage)
        reputation = try values.decode(Int?.self, forKey: .reputation)
        userID = try values.decode(Int?.self, forKey: .userID)
        userType = try values.decode(UserType.self, forKey: .userType)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(acceptRate, forKey: .acceptRate)
        try container.encode(accountID, forKey: .accountID)
        try container.encode(badgeCounts, forKey: .badgeCounts)
        try container.encode(displayName, forKey: .displayName)
        try container.encode(link, forKey: .link)
        try container.encode(profileImage, forKey: .profileImage)
        try container.encode(reputation, forKey: .reputation)
        try container.encode(userID, forKey: .userID)
        try container.encode(userType, forKey: .userType)
    }
}

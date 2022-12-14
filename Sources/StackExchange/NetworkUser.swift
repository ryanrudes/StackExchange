import Foundation

public struct NetworkUser: Codable {
    public var accountID: Int
    public var answerCount: Int
    public var badgeCounts: BadgeCount
    public var creationDate: Date
    public var lastAccessDate: Date
    public var questionCount: Int
    public var reputation: Int
    public var siteName: String
    public var siteUrl: String
    public var topAnswers: [NetworkPost]
    public var topQuestions: [NetworkPost]
    public var userID: Int
    public var userType: UserType
    
    public enum UserType: String, Codable {
        case unregistered
        case registered
        case moderator
        case teamAdmin = "team_admin"
        case doesNotExist = "does_not_exist"
    }

    enum CodingKeys: String, CodingKey {
        case accountID = "account_id"
        case answerCount = "answer_count"
        case badgeCounts = "badge_counts"
        case creationDate = "creation_date"
        case lastAccessDate = "last_access_date"
        case questionCount = "question_count"
        case reputation
        case siteName = "site_name"
        case siteUrl = "site_url"
        case topAnswers = "top_answers"
        case topQuestions = "top_questions"
        case userID = "user_id"
        case userType = "user_type"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        accountID = try values.decode(Int.self, forKey: .accountID)
        answerCount = try values.decode(Int.self, forKey: .answerCount)
        badgeCounts = try values.decode(BadgeCount.self, forKey: .badgeCounts)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        lastAccessDate = try values.decode(Date.self, forKey: .lastAccessDate)
        questionCount = try values.decode(Int.self, forKey: .questionCount)
        reputation = try values.decode(Int.self, forKey: .reputation)
        siteName = try values.decode(String.self, forKey: .siteName)
        siteUrl = try values.decode(String.self, forKey: .siteUrl)
        topAnswers = try values.decode([NetworkPost].self, forKey: .topAnswers)
        topQuestions = try values.decode([NetworkPost].self, forKey: .topQuestions)
        userID = try values.decode(Int.self, forKey: .userID)
        userType = try values.decode(UserType.self, forKey: .userType)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(accountID, forKey: .accountID)
        try container.encode(answerCount, forKey: .answerCount)
        try container.encode(badgeCounts, forKey: .badgeCounts)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(lastAccessDate, forKey: .lastAccessDate)
        try container.encode(questionCount, forKey: .questionCount)
        try container.encode(reputation, forKey: .reputation)
        try container.encode(siteName, forKey: .siteName)
        try container.encode(siteUrl, forKey: .siteUrl)
        try container.encode(topAnswers, forKey: .topAnswers)
        try container.encode(topQuestions, forKey: .topQuestions)
        try container.encode(userID, forKey: .userID)
        try container.encode(userType, forKey: .userType)
    }
}

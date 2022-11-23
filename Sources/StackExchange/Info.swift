import Foundation

public struct Info: Codable {
    public var answersPerMinute: Double
    public var apiRevision: String
    public var badgesPerMinute: Double
    public var newActiveUsers: Int
    public var questionsPerMinute: Double
    public var site: Site
    public var totalAccepted: Int
    public var totalAnswers: Int
    public var totalBadges: Int
    public var totalComments: Int
    public var totalQuestions: Int
    public var totalUnanswered: Int
    public var totalUsers: Int
    public var totalVotes: Int

    enum CodingKeys: String, CodingKey {
        case answersPerMinute = "answers_per_minute"
        case apiRevision = "api_revision"
        case badgesPerMinute = "badges_per_minute"
        case newActiveUsers = "new_active_users"
        case questionsPerMinute = "questions_per_minute"
        case site
        case totalAccepted = "total_accepted"
        case totalAnswers = "total_answers"
        case totalBadges = "total_badges"
        case totalComments = "total_comments"
        case totalQuestions = "total_questions"
        case totalUnanswered = "total_unanswered"
        case totalUsers = "total_users"
        case totalVotes = "total_votes"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        answersPerMinute = try values.decode(Double.self, forKey: .answersPerMinute)
        apiRevision = try values.decode(String.self, forKey: .apiRevision)
        badgesPerMinute = try values.decode(Double.self, forKey: .badgesPerMinute)
        newActiveUsers = try values.decode(Int.self, forKey: .newActiveUsers)
        questionsPerMinute = try values.decode(Double.self, forKey: .questionsPerMinute)
        site = try values.decode(Site.self, forKey: .site)
        totalAccepted = try values.decode(Int.self, forKey: .totalAccepted)
        totalAnswers = try values.decode(Int.self, forKey: .totalAnswers)
        totalBadges = try values.decode(Int.self, forKey: .totalBadges)
        totalComments = try values.decode(Int.self, forKey: .totalComments)
        totalQuestions = try values.decode(Int.self, forKey: .totalQuestions)
        totalUnanswered = try values.decode(Int.self, forKey: .totalUnanswered)
        totalUsers = try values.decode(Int.self, forKey: .totalUsers)
        totalVotes = try values.decode(Int.self, forKey: .totalVotes)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(answersPerMinute, forKey: .answersPerMinute)
        try container.encode(apiRevision, forKey: .apiRevision)
        try container.encode(badgesPerMinute, forKey: .badgesPerMinute)
        try container.encode(newActiveUsers, forKey: .newActiveUsers)
        try container.encode(questionsPerMinute, forKey: .questionsPerMinute)
        try container.encode(site, forKey: .site)
        try container.encode(totalAccepted, forKey: .totalAccepted)
        try container.encode(totalAnswers, forKey: .totalAnswers)
        try container.encode(totalBadges, forKey: .totalBadges)
        try container.encode(totalComments, forKey: .totalComments)
        try container.encode(totalQuestions, forKey: .totalQuestions)
        try container.encode(totalUnanswered, forKey: .totalUnanswered)
        try container.encode(totalUsers, forKey: .totalUsers)
        try container.encode(totalVotes, forKey: .totalVotes)
    }
}

import Foundation

struct User: Codable {
    var aboutMe: String?
    var acceptRate: Int?
    var accountID: Int
    var age: Int?
    var answerCount: Int
    var badgeCounts: BadgeCount
    var collectives: [CollectiveMembership]?
    var creationDate: Date
    var displayName: String
    var downVoteCount: Int
    var isEmployee: Bool
    var lastAccessDate: Date
    var lastModifiedDate: Date?
    var link: String
    var location: String?
    var profileImage: String
    var questionCount: Int
    var reputation: Int
    var reputationChangeDay: Int
    var reputationChangeMonth: Int
    var reputationChangeQuarter: Int
    var reputationChangeWeek: Int
    var reputationChangeYear: Int
    var timedPenaltyDate: Date?
    var upVoteCount: Int
    var userID: Int
    var userType: UserType
    var viewCount: Int
    var websiteUrl: String?
    
    enum UserType: String, Codable {
        case unregistered
        case registered
        case moderator
        case teamAdmin = "team_admin"
        case doesNotExist = "does_not_exist"
    }

    enum CodingKeys: String, CodingKey {
        case aboutMe = "about_me"
        case acceptRate = "accept_rate"
        case accountID = "account_id"
        case age
        case answerCount = "answer_count"
        case badgeCounts = "badge_counts"
        case collectives
        case creationDate = "creation_date"
        case displayName = "display_name"
        case downVoteCount = "down_vote_count"
        case isEmployee = "is_employee"
        case lastAccessDate = "last_access_date"
        case lastModifiedDate = "last_modified_date"
        case link
        case location
        case profileImage = "profile_image"
        case questionCount = "question_count"
        case reputation
        case reputationChangeDay = "reputation_change_day"
        case reputationChangeMonth = "reputation_change_month"
        case reputationChangeQuarter = "reputation_change_quarter"
        case reputationChangeWeek = "reputation_change_week"
        case reputationChangeYear = "reputation_change_year"
        case timedPenaltyDate = "timed_penalty_date"
        case upVoteCount = "up_vote_count"
        case userID = "user_id"
        case userType = "user_type"
        case viewCount = "view_count"
        case websiteUrl = "website_url"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        aboutMe = try values.decode(String?.self, forKey: .aboutMe)
        acceptRate = try values.decode(Int?.self, forKey: .acceptRate)
        accountID = try values.decode(Int.self, forKey: .accountID)
        age = try values.decode(Int?.self, forKey: .age)
        answerCount = try values.decode(Int.self, forKey: .answerCount)
        badgeCounts = try values.decode(BadgeCount.self, forKey: .badgeCounts)
        collectives = try values.decode([CollectiveMembership]?.self, forKey: .collectives)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        displayName = try values.decode(String.self, forKey: .displayName)
        downVoteCount = try values.decode(Int.self, forKey: .downVoteCount)
        isEmployee = try values.decode(Bool.self, forKey: .isEmployee)
        lastAccessDate = try values.decode(Date.self, forKey: .lastAccessDate)
        lastModifiedDate = try values.decode(Date?.self, forKey: .lastModifiedDate)
        link = try values.decode(String.self, forKey: .link)
        location = try values.decode(String?.self, forKey: .location)
        profileImage = try values.decode(String.self, forKey: .profileImage)
        questionCount = try values.decode(Int.self, forKey: .questionCount)
        reputation = try values.decode(Int.self, forKey: .reputation)
        reputationChangeDay = try values.decode(Int.self, forKey: .reputationChangeDay)
        reputationChangeMonth = try values.decode(Int.self, forKey: .reputationChangeMonth)
        reputationChangeQuarter = try values.decode(Int.self, forKey: .reputationChangeQuarter)
        reputationChangeWeek = try values.decode(Int.self, forKey: .reputationChangeWeek)
        reputationChangeYear = try values.decode(Int.self, forKey: .reputationChangeYear)
        timedPenaltyDate = try values.decode(Date?.self, forKey: .timedPenaltyDate)
        upVoteCount = try values.decode(Int.self, forKey: .upVoteCount)
        userID = try values.decode(Int.self, forKey: .userID)
        userType = try values.decode(UserType.self, forKey: .userType)
        viewCount = try values.decode(Int.self, forKey: .viewCount)
        websiteUrl = try values.decode(String?.self, forKey: .websiteUrl)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(aboutMe, forKey: .aboutMe)
        try container.encode(acceptRate, forKey: .acceptRate)
        try container.encode(accountID, forKey: .accountID)
        try container.encode(age, forKey: .age)
        try container.encode(answerCount, forKey: .answerCount)
        try container.encode(badgeCounts, forKey: .badgeCounts)
        try container.encode(collectives, forKey: .collectives)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(displayName, forKey: .displayName)
        try container.encode(downVoteCount, forKey: .downVoteCount)
        try container.encode(isEmployee, forKey: .isEmployee)
        try container.encode(lastAccessDate, forKey: .lastAccessDate)
        try container.encode(lastModifiedDate, forKey: .lastModifiedDate)
        try container.encode(link, forKey: .link)
        try container.encode(location, forKey: .location)
        try container.encode(profileImage, forKey: .profileImage)
        try container.encode(questionCount, forKey: .questionCount)
        try container.encode(reputation, forKey: .reputation)
        try container.encode(reputationChangeDay, forKey: .reputationChangeDay)
        try container.encode(reputationChangeMonth, forKey: .reputationChangeMonth)
        try container.encode(reputationChangeQuarter, forKey: .reputationChangeQuarter)
        try container.encode(reputationChangeWeek, forKey: .reputationChangeWeek)
        try container.encode(reputationChangeYear, forKey: .reputationChangeYear)
        try container.encode(timedPenaltyDate, forKey: .timedPenaltyDate)
        try container.encode(upVoteCount, forKey: .upVoteCount)
        try container.encode(userID, forKey: .userID)
        try container.encode(userType, forKey: .userType)
        try container.encode(viewCount, forKey: .viewCount)
        try container.encode(websiteUrl, forKey: .websiteUrl)
    }
}

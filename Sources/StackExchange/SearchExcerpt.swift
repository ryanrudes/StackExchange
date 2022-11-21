import Foundation

struct SearchExcerpt: Codable {
    var answerCount: Int?
    var answerID: Int?
    var body: String
    var closedDate: Date?
    var communityOwnedDate: Date
    var creationDate: Date
    var equivalentTagSearch: [String]?
    var excerpt: String
    var hasAcceptedAnswer: Bool?
    var isAccepted: Bool?
    var isAnswered: Bool?
    var itemType: ItemType
    var lastActivityDate: Date
    var lastActivityUser: ShallowUser
    var lockedDate: Date
    var owner: ShallowUser
    var questionID: Int?
    var questionScore: Int?
    var score: Int
    var tags: [String]?
    var title: String
    
    enum ItemType: String, Codable {
        case question
        case answer
    }

    enum CodingKeys: String, CodingKey {
        case answerCount = "answer_count"
        case answerID = "answer_id"
        case body
        case closedDate = "closed_date"
        case communityOwnedDate = "community_owned_date"
        case creationDate = "creation_date"
        case equivalentTagSearch = "equivalent_tag_search"
        case excerpt
        case hasAcceptedAnswer = "has_accepted_answer"
        case isAccepted = "is_accepted"
        case isAnswered = "is_answered"
        case itemType = "item_type"
        case lastActivityDate = "last_activity_date"
        case lastActivityUser = "last_activity_user"
        case lockedDate = "locked_date"
        case owner
        case questionID = "question_id"
        case questionScore = "question_score"
        case score
        case tags
        case title
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        answerCount = try values.decode(Int?.self, forKey: .answerCount)
        answerID = try values.decode(Int?.self, forKey: .answerID)
        body = try values.decode(String.self, forKey: .body)
        closedDate = try values.decode(Date?.self, forKey: .closedDate)
        communityOwnedDate = try values.decode(Date.self, forKey: .communityOwnedDate)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        equivalentTagSearch = try values.decode([String]?.self, forKey: .equivalentTagSearch)
        excerpt = try values.decode(String.self, forKey: .excerpt)
        hasAcceptedAnswer = try values.decode(Bool?.self, forKey: .hasAcceptedAnswer)
        isAccepted = try values.decode(Bool?.self, forKey: .isAccepted)
        isAnswered = try values.decode(Bool?.self, forKey: .isAnswered)
        itemType = try values.decode(ItemType.self, forKey: .itemType)
        lastActivityDate = try values.decode(Date.self, forKey: .lastActivityDate)
        lastActivityUser = try values.decode(ShallowUser.self, forKey: .lastActivityUser)
        lockedDate = try values.decode(Date.self, forKey: .lockedDate)
        owner = try values.decode(ShallowUser.self, forKey: .owner)
        questionID = try values.decode(Int?.self, forKey: .questionID)
        questionScore = try values.decode(Int?.self, forKey: .questionScore)
        score = try values.decode(Int.self, forKey: .score)
        tags = try values.decode([String]?.self, forKey: .tags)
        title = try values.decode(String.self, forKey: .title)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(answerCount, forKey: .answerCount)
        try container.encode(answerID, forKey: .answerID)
        try container.encode(body, forKey: .body)
        try container.encode(closedDate, forKey: .closedDate)
        try container.encode(communityOwnedDate, forKey: .communityOwnedDate)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(equivalentTagSearch, forKey: .equivalentTagSearch)
        try container.encode(excerpt, forKey: .excerpt)
        try container.encode(hasAcceptedAnswer, forKey: .hasAcceptedAnswer)
        try container.encode(isAccepted, forKey: .isAccepted)
        try container.encode(isAnswered, forKey: .isAnswered)
        try container.encode(itemType, forKey: .itemType)
        try container.encode(lastActivityDate, forKey: .lastActivityDate)
        try container.encode(lastActivityUser, forKey: .lastActivityUser)
        try container.encode(lockedDate, forKey: .lockedDate)
        try container.encode(owner, forKey: .owner)
        try container.encode(questionID, forKey: .questionID)
        try container.encode(questionScore, forKey: .questionScore)
        try container.encode(score, forKey: .score)
        try container.encode(tags, forKey: .tags)
        try container.encode(title, forKey: .title)
    }
}

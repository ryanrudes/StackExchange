import Foundation

public struct InboxItem: Codable {
    public var answerID: Int?
    public var body: String?
    public var commentID: Int?
    public var creationDate: Date
    public var isUnread: Bool
    public var itemType: ItemType
    public var link: String
    public var questionID: Int?
    public var site: Site?
    public var title: String

    public enum ItemType: String, Codable {
        case comment
        case chatMessage = "chat_message"
        case newAnswer = "new_answer"
        case careersMessage = "careers_message"
        case moderatorMessage = "moderator_message"
        case questionUpdate = "question_update"
        case followedPostActivity = "followed_post_activity"
        case subcommunityEndorsement = "subcommunity_endorsement"
        case subcommunityLeaderboard = "subcommunity_leaderboard"
    }
    
    enum CodingKeys: String, CodingKey {
        case answerID = "answer_id"
        case body
        case commentID = "comment_id"
        case creationDate = "creation_date"
        case isUnread = "is_unread"
        case itemType = "item_type"
        case link
        case questionID = "question_id"
        case site
        case title
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        answerID = try values.decode(Int?.self, forKey: .answerID)
        body = try values.decode(String?.self, forKey: .body)
        commentID = try values.decode(Int?.self, forKey: .commentID)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        isUnread = try values.decode(Bool.self, forKey: .isUnread)
        itemType = try values.decode(ItemType.self, forKey: .itemType)
        link = try values.decode(String.self, forKey: .link)
        questionID = try values.decode(Int?.self, forKey: .questionID)
        site = try values.decode(Site?.self, forKey: .site)
        title = try values.decode(String.self, forKey: .title)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(answerID, forKey: .answerID)
        try container.encode(body, forKey: .body)
        try container.encode(commentID, forKey: .commentID)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(isUnread, forKey: .isUnread)
        try container.encode(itemType, forKey: .itemType)
        try container.encode(link, forKey: .link)
        try container.encode(questionID, forKey: .questionID)
        try container.encode(site, forKey: .site)
        try container.encode(title, forKey: .title)
    }
}

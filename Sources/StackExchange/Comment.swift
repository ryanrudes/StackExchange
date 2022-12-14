import Foundation

public struct Comment: Codable {
    public var body: String
    public var bodyMarkdown: String
    public var canFlag: Bool
    public var commentID: Int
    public var contentLicense: String
    public var creationDate: Date
    public var edited: Bool
    public var link: String
    public var owner: ShallowUser?
    public var postID: Int
    public var postType: PostType
    public var replyToUser: ShallowUser?
    public var score: Int
    public var upvoted: Bool
    
    public enum PostType: String, Codable {
        case question
        case answer
        case article
    }

    enum CodingKeys: String, CodingKey {
        case body
        case bodyMarkdown = "body_markdown"
        case canFlag = "can_flag"
        case commentID = "comment_id"
        case contentLicense = "content_license"
        case creationDate = "creation_date"
        case edited
        case link
        case owner
        case postID = "post_id"
        case postType = "post_type"
        case replyToUser = "reply_to_user"
        case score
        case upvoted
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        body = try values.decode(String.self, forKey: .body)
        bodyMarkdown = try values.decode(String.self, forKey: .bodyMarkdown)
        canFlag = try values.decode(Bool.self, forKey: .canFlag)
        commentID = try values.decode(Int.self, forKey: .commentID)
        contentLicense = try values.decode(String.self, forKey: .contentLicense)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        edited = try values.decode(Bool.self, forKey: .edited)
        link = try values.decode(String.self, forKey: .link)
        owner = try values.decode(ShallowUser?.self, forKey: .owner)
        postID = try values.decode(Int.self, forKey: .postID)
        postType = try values.decode(PostType.self, forKey: .postType)
        replyToUser = try values.decode(ShallowUser?.self, forKey: .replyToUser)
        score = try values.decode(Int.self, forKey: .score)
        upvoted = try values.decode(Bool.self, forKey: .upvoted)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(body, forKey: .body)
        try container.encode(bodyMarkdown, forKey: .bodyMarkdown)
        try container.encode(canFlag, forKey: .canFlag)
        try container.encode(commentID, forKey: .commentID)
        try container.encode(contentLicense, forKey: .contentLicense)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(edited, forKey: .edited)
        try container.encode(link, forKey: .link)
        try container.encode(owner, forKey: .owner)
        try container.encode(postID, forKey: .postID)
        try container.encode(postType, forKey: .postType)
        try container.encode(replyToUser, forKey: .replyToUser)
        try container.encode(score, forKey: .score)
        try container.encode(upvoted, forKey: .upvoted)
    }
}

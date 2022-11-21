import Foundation

struct Article: Codable {
    var articleID: Int
    var articleType: String
    var body: String
    var bodyMarkdown: String
    var commentCount: Int
    var comments: [Comment]?
    var creationDate: Date
    var lastActivityDate: Date
    var lastEditDate: Date?
    var lastEditor: ShallowUser
    var link: String
    var owner: ShallowUser?
    var score: Int
    var tags: [String]
    var title: String
    var viewCount: Int

    enum CodingKeys: String, CodingKey {
        case articleID = "article_id"
        case articleType = "article_type"
        case body
        case bodyMarkdown = "body_markdown"
        case commentCount = "comment_count"
        case comments
        case creationDate = "creation_date"
        case lastActivityDate = "last_activity_date"
        case lastEditDate = "last_edit_date"
        case lastEditor = "last_editor"
        case link
        case owner
        case score
        case tags
        case title
        case viewCount = "view_count"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        articleID = try values.decode(Int.self, forKey: .articleID)
        articleType = try values.decode(String.self, forKey: .articleType)
        body = try values.decode(String.self, forKey: .body)
        bodyMarkdown = try values.decode(String.self, forKey: .bodyMarkdown)
        commentCount = try values.decode(Int.self, forKey: .commentCount)
        comments = try values.decode([Comment]?.self, forKey: .comments)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        lastActivityDate = try values.decode(Date.self, forKey: .lastActivityDate)
        lastEditDate = try values.decode(Date?.self, forKey: .lastEditDate)
        lastEditor = try values.decode(ShallowUser.self, forKey: .lastEditor)
        link = try values.decode(String.self, forKey: .link)
        owner = try values.decode(ShallowUser?.self, forKey: .owner)
        score = try values.decode(Int.self, forKey: .score)
        tags = try values.decode([String].self, forKey: .tags)
        title = try values.decode(String.self, forKey: .title)
        viewCount = try values.decode(Int.self, forKey: .viewCount)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(articleID, forKey: .articleID)
        try container.encode(articleType, forKey: .articleType)
        try container.encode(body, forKey: .body)
        try container.encode(bodyMarkdown, forKey: .bodyMarkdown)
        try container.encode(commentCount, forKey: .commentCount)
        try container.encode(comments, forKey: .comments)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(lastActivityDate, forKey: .lastActivityDate)
        try container.encode(lastEditDate, forKey: .lastEditDate)
        try container.encode(lastEditor, forKey: .lastEditor)
        try container.encode(link, forKey: .link)
        try container.encode(owner, forKey: .owner)
        try container.encode(score, forKey: .score)
        try container.encode(tags, forKey: .tags)
        try container.encode(title, forKey: .title)
        try container.encode(viewCount, forKey: .viewCount)
    }
}

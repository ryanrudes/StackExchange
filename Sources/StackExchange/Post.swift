import Foundation

struct Post: Codable {
    var body: String
    var bodyMarkdown: String
    var collectives: [Collective]?
    var commentCount: Int
    var comments: [Comment]?
    var contentLicense: String
    var creationDate: Date
    var downVoteCount: Int
    var downvoted: Bool
    var lastActivityDate: Date
    var lastEditDate: Date?
    var lastEditor: ShallowUser
    var link: String
    var owner: ShallowUser?
    var postID: Int
    var postType: PostType
    var postedByCollectives: [Collective]?
    var score: Int
    var shareLink: String
    var title: String
    var upVoteCount: Int
    var upvoted: Bool
    
    enum PostType: String, Codable {
        case question
        case answer
        case article
    }

    enum CodingKeys: String, CodingKey {
        case body
        case bodyMarkdown = "body_markdown"
        case collectives
        case commentCount = "comment_count"
        case comments
        case contentLicense = "content_license"
        case creationDate = "creation_date"
        case downVoteCount = "down_vote_count"
        case downvoted
        case lastActivityDate = "last_activity_date"
        case lastEditDate = "last_edit_date"
        case lastEditor = "last_editor"
        case link
        case owner
        case postID = "post_id"
        case postType = "post_type"
        case postedByCollectives = "posted_by_collectives"
        case score
        case shareLink = "share_link"
        case title
        case upVoteCount = "up_vote_count"
        case upvoted
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        body = try values.decode(String.self, forKey: .body)
        bodyMarkdown = try values.decode(String.self, forKey: .bodyMarkdown)
        collectives = try values.decode([Collective]?.self, forKey: .collectives)
        commentCount = try values.decode(Int.self, forKey: .commentCount)
        comments = try values.decode([Comment]?.self, forKey: .comments)
        contentLicense = try values.decode(String.self, forKey: .contentLicense)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        downVoteCount = try values.decode(Int.self, forKey: .downVoteCount)
        downvoted = try values.decode(Bool.self, forKey: .downvoted)
        lastActivityDate = try values.decode(Date.self, forKey: .lastActivityDate)
        lastEditDate = try values.decode(Date?.self, forKey: .lastEditDate)
        lastEditor = try values.decode(ShallowUser.self, forKey: .lastEditor)
        link = try values.decode(String.self, forKey: .link)
        owner = try values.decode(ShallowUser?.self, forKey: .owner)
        postID = try values.decode(Int.self, forKey: .postID)
        postType = try values.decode(PostType.self, forKey: .postType)
        postedByCollectives = try values.decode([Collective]?.self, forKey: .postedByCollectives)
        score = try values.decode(Int.self, forKey: .score)
        shareLink = try values.decode(String.self, forKey: .shareLink)
        title = try values.decode(String.self, forKey: .title)
        upVoteCount = try values.decode(Int.self, forKey: .upVoteCount)
        upvoted = try values.decode(Bool.self, forKey: .upvoted)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(body, forKey: .body)
        try container.encode(bodyMarkdown, forKey: .bodyMarkdown)
        try container.encode(collectives, forKey: .collectives)
        try container.encode(commentCount, forKey: .commentCount)
        try container.encode(comments, forKey: .comments)
        try container.encode(contentLicense, forKey: .contentLicense)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(downVoteCount, forKey: .downVoteCount)
        try container.encode(downvoted, forKey: .downvoted)
        try container.encode(lastActivityDate, forKey: .lastActivityDate)
        try container.encode(lastEditDate, forKey: .lastEditDate)
        try container.encode(lastEditor, forKey: .lastEditor)
        try container.encode(link, forKey: .link)
        try container.encode(owner, forKey: .owner)
        try container.encode(postID, forKey: .postID)
        try container.encode(postType, forKey: .postType)
        try container.encode(postedByCollectives, forKey: .postedByCollectives)
        try container.encode(score, forKey: .score)
        try container.encode(shareLink, forKey: .shareLink)
        try container.encode(title, forKey: .title)
        try container.encode(upVoteCount, forKey: .upVoteCount)
        try container.encode(upvoted, forKey: .upvoted)
    }
}

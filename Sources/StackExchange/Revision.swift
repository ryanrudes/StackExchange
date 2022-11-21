import Foundation

struct Revision: Codable {
    var body: String?
    var comment: String
    var contentLicense: String
    var creationDate: Date
    var isRollback: Bool
    var lastBody: String?
    var lastTags: [String]?
    var lastTitle: String?
    var postID: Int
    var postType: PostType
    var revisionGid: String
    var revisionNumber: Int?
    var revisionType: RevisionType
    var setCommunityWiki: Bool
    var tags: [String]?
    var title: String?
    var user: ShallowUser
    
    enum PostType: String, Codable {
        case question
        case answer
        case article
    }
    
    enum RevisionType: String, Codable {
        case singleUser = "single_user"
        case voteBased = "vote_based"
    }

    enum CodingKeys: String, CodingKey {
        case body
        case comment
        case contentLicense = "content_license"
        case creationDate = "creation_date"
        case isRollback = "is_rollback"
        case lastBody = "last_body"
        case lastTags = "last_tags"
        case lastTitle = "last_title"
        case postID = "post_id"
        case postType = "post_type"
        case revisionGid = "revision_guid"
        case revisionNumber = "revision_number"
        case revisionType = "revision_type"
        case setCommunityWiki = "set_community_wiki"
        case tags
        case title
        case user
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        body = try values.decode(String?.self, forKey: .body)
        comment = try values.decode(String.self, forKey: .comment)
        contentLicense = try values.decode(String.self, forKey: .contentLicense)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        isRollback = try values.decode(Bool.self, forKey: .isRollback)
        lastBody = try values.decode(String?.self, forKey: .lastBody)
        lastTags = try values.decode([String]?.self, forKey: .lastTags)
        lastTitle = try values.decode(String?.self, forKey: .lastTitle)
        postID = try values.decode(Int.self, forKey: .postID)
        postType = try values.decode(PostType.self, forKey: .postType)
        revisionGid = try values.decode(String.self, forKey: .revisionGid)
        revisionNumber = try values.decode(Int?.self, forKey: .revisionNumber)
        revisionType = try values.decode(RevisionType.self, forKey: .revisionType)
        setCommunityWiki = try values.decode(Bool.self, forKey: .setCommunityWiki)
        tags = try values.decode([String]?.self, forKey: .tags)
        title = try values.decode(String?.self, forKey: .title)
        user = try values.decode(ShallowUser.self, forKey: .user)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(body, forKey: .body)
        try container.encode(comment, forKey: .comment)
        try container.encode(contentLicense, forKey: .contentLicense)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(isRollback, forKey: .isRollback)
        try container.encode(lastBody, forKey: .lastBody)
        try container.encode(lastTags, forKey: .lastTags)
        try container.encode(lastTitle, forKey: .lastTitle)
        try container.encode(postID, forKey: .postID)
        try container.encode(postType, forKey: .postType)
        try container.encode(revisionGid, forKey: .revisionGid)
        try container.encode(revisionNumber, forKey: .revisionNumber)
        try container.encode(revisionType, forKey: .revisionType)
        try container.encode(setCommunityWiki, forKey: .setCommunityWiki)
        try container.encode(tags, forKey: .tags)
        try container.encode(title, forKey: .title)
        try container.encode(user, forKey: .user)
    }
}

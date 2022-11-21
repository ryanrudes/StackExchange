import Foundation

struct SuggestedEdit: Codable {
    var approvalDate: Date?
    var body: String?
    var comment: String
    var creationDate: Date
    var postID: Int
    var postType: PostType
    var proposingUser: ShallowUser?
    var rejectionDate: Date?
    var suggestedEditid: Int
    var tags: [String]?
    var title: String?

    enum PostType: String, Codable {
        case question
        case answer
        case article
    }
    
    enum CodingKeys: String, CodingKey {
        case approvalDate = "approval_date"
        case body
        case comment
        case creationDate = "creation_date"
        case postID = "post_id"
        case postType = "post_type"
        case proposingUser = "proposing_user"
        case rejectionDate = "rejection_date"
        case suggestedEditid = "suggested_edit_id"
        case tags
        case title
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        approvalDate = try values.decode(Date?.self, forKey: .approvalDate)
        body = try values.decode(String?.self, forKey: .body)
        comment = try values.decode(String.self, forKey: .comment)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        postID = try values.decode(Int.self, forKey: .postID)
        postType = try values.decode(PostType.self, forKey: .postType)
        proposingUser = try values.decode(ShallowUser?.self, forKey: .proposingUser)
        rejectionDate = try values.decode(Date?.self, forKey: .rejectionDate)
        suggestedEditid = try values.decode(Int.self, forKey: .suggestedEditid)
        tags = try values.decode([String]?.self, forKey: .tags)
        title = try values.decode(String?.self, forKey: .title)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(approvalDate, forKey: .approvalDate)
        try container.encode(body, forKey: .body)
        try container.encode(comment, forKey: .comment)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(postID, forKey: .postID)
        try container.encode(postType, forKey: .postType)
        try container.encode(proposingUser, forKey: .proposingUser)
        try container.encode(rejectionDate, forKey: .rejectionDate)
        try container.encode(suggestedEditid, forKey: .suggestedEditid)
        try container.encode(tags, forKey: .tags)
        try container.encode(title, forKey: .title)
    }
}

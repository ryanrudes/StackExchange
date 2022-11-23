import Foundation

public struct NetworkPost: Codable {
    public var postID: Int
    public var postType: PostType
    public var score: Int
    public var title: String

    public enum PostType: String, Codable {
        case question
        case answer
        case article
    }
    
    enum CodingKeys: String, CodingKey {
        case postID = "post_id"
        case postType = "post_type"
        case score
        case title
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        postID = try values.decode(Int.self, forKey: .postID)
        postType = try values.decode(PostType.self, forKey: .postType)
        score = try values.decode(Int.self, forKey: .score)
        title = try values.decode(String.self, forKey: .title)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(postID, forKey: .postID)
        try container.encode(postType, forKey: .postType)
        try container.encode(score, forKey: .score)
        try container.encode(title, forKey: .title)
    }
}

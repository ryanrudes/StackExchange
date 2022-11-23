import Foundation

public struct Tag: Codable {
    public var collectives: [Collective]?
    public var count: Int
    public var hasSynonyms: Bool
    public var isModeratorOnly: Bool
    public var isRequired: Bool
    public var lastActivityDate: Date?
    public var name: String
    public var synonyms: [String]
    public var userID: Int?

    enum CodingKeys: String, CodingKey {
        case collectives
        case count
        case hasSynonyms = "has_synonyms"
        case isModeratorOnly = "is_moderator_only"
        case isRequired = "is_required"
        case lastActivityDate = "last_activity_date"
        case name
        case synonyms
        case userID = "user_id"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        collectives = try values.decode([Collective]?.self, forKey: .collectives)
        count = try values.decode(Int.self, forKey: .count)
        hasSynonyms = try values.decode(Bool.self, forKey: .hasSynonyms)
        isModeratorOnly = try values.decode(Bool.self, forKey: .isModeratorOnly)
        isRequired = try values.decode(Bool.self, forKey: .isRequired)
        lastActivityDate = try values.decode(Date?.self, forKey: .lastActivityDate)
        name = try values.decode(String.self, forKey: .name)
        synonyms = try values.decode([String].self, forKey: .synonyms)
        userID = try values.decode(Int?.self, forKey: .userID)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(collectives, forKey: .collectives)
        try container.encode(count, forKey: .count)
        try container.encode(hasSynonyms, forKey: .hasSynonyms)
        try container.encode(isModeratorOnly, forKey: .isModeratorOnly)
        try container.encode(isRequired, forKey: .isRequired)
        try container.encode(lastActivityDate, forKey: .lastActivityDate)
        try container.encode(name, forKey: .name)
        try container.encode(synonyms, forKey: .synonyms)
        try container.encode(userID, forKey: .userID)
    }
}

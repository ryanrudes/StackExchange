import Foundation

public struct ClosedDetails: Codable {
    var byUsers: [ShallowUser]
    var description: String
    var onHold: Bool
    var originalQuestions: [OriginalQuestion]?
    var reason: String

    public enum CodingKeys: String, CodingKey {
        case byUsers = "by_users"
        case description
        case onHold = "on_hold"
        case originalQuestions = "original_questions"
        case reason
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        byUsers = try values.decode([ShallowUser].self, forKey: .byUsers)
        description = try values.decode(String.self, forKey: .description)
        onHold = try values.decode(Bool.self, forKey: .onHold)
        originalQuestions = try values.decode([OriginalQuestion]?.self, forKey: .originalQuestions)
        reason = try values.decode(String.self, forKey: .reason)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(byUsers, forKey: .byUsers)
        try container.encode(description, forKey: .description)
        try container.encode(onHold, forKey: .onHold)
        try container.encode(originalQuestions, forKey: .originalQuestions)
        try container.encode(reason, forKey: .reason)
    }
}

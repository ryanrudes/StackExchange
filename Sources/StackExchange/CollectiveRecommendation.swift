import Foundation

public struct CollectiveRecommendation: Codable {
    public var collective: Collective
    public var creationDate: Date

    enum CodingKeys: String, CodingKey {
        case collective
        case creationDate = "creation_date"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        collective = try values.decode(Collective.self, forKey: .collective)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(collective, forKey: .collective)
        try container.encode(creationDate, forKey: .creationDate)
    }
}

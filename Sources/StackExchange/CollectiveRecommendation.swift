import Foundation

struct CollectiveRecommendation: Codable {
    var collective: Collective
    var creationDate: Date

    enum CodingKeys: String, CodingKey {
        case collective
        case creationDate = "creation_date"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        collective = try values.decode(Collective.self, forKey: .collective)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(collective, forKey: .collective)
        try container.encode(creationDate, forKey: .creationDate)
    }
}

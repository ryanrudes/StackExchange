import Foundation

struct MigrationInfo: Codable {
    var onDate: Date
    var otherSite: Site
    var questionID: Int

    enum CodingKeys: String, CodingKey {
        case onDate = "on_date"
        case otherSite = "other_site"
        case questionID = "question_id"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        onDate = try values.decode(Date.self, forKey: .onDate)
        otherSite = try values.decode(Site.self, forKey: .otherSite)
        questionID = try values.decode(Int.self, forKey: .questionID)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(onDate, forKey: .onDate)
        try container.encode(otherSite, forKey: .otherSite)
        try container.encode(questionID, forKey: .questionID)
    }
}

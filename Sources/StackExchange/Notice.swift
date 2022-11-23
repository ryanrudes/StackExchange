import Foundation

public struct Notice: Codable {
    public var body: String
    public var creationDate: Date
    public var ownerUserid: Int

    enum CodingKeys: String, CodingKey {
        case body
        case creationDate = "creation_date"
        case ownerUserid = "owner_user_id"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        body = try values.decode(String.self, forKey: .body)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        ownerUserid = try values.decode(Int.self, forKey: .ownerUserid)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(body, forKey: .body)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(ownerUserid, forKey: .ownerUserid)
    }
}

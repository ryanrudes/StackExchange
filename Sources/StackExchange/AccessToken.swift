import Foundation

public struct AccessToken: Codable {
    public var accessToken: String
    public var accountID: Int
    public var expiresOnDate: Date?
    public var scope: [String]?

    enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case accountID = "account_id"
        case expiresOnDate = "expires_on_date"
        case scope
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        accessToken = try values.decode(String.self, forKey: .accessToken)
        accountID = try values.decode(Int.self, forKey: .accountID)
        expiresOnDate = try values.decode(Date?.self, forKey: .expiresOnDate)
        scope = try values.decode([String]?.self, forKey: .scope)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(accessToken, forKey: .accessToken)
        try container.encode(accountID, forKey: .accountID)
        try container.encode(expiresOnDate, forKey: .expiresOnDate)
        try container.encode(scope, forKey: .scope)
    }
}

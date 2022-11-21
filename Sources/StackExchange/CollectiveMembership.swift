import Foundation

struct CollectiveMembership: Codable {
    var collective: Collective
    var role: Role
    
    enum Role: String, Codable {
        case admin
        case recognizedMember = "recognized_member"
        case member
    }

    enum CodingKeys: String, CodingKey {
        case collective
        case role
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        collective = try values.decode(Collective.self, forKey: .collective)
        role = try values.decode(Role.self, forKey: .role)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(collective, forKey: .collective)
        try container.encode(role, forKey: .role)
    }
}

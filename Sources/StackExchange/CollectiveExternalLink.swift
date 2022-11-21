import Foundation

struct CollectiveExternalLink: Codable {
    var link: String
    var collectiveExternalLinkType: CollectiveExternalLinkType
    
    enum CollectiveExternalLinkType: String, Codable {
        case website
        case twitter
        case github
        case facebook
        case instagram
        case support
    }
    
    enum CodingKeys: String, CodingKey {
        case link
        case collectiveExternalLinkType
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        link = try values.decode(String.self, forKey: .link)
        collectiveExternalLinkType = try values.decode(CollectiveExternalLinkType.self, forKey: .collectiveExternalLinkType)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(link, forKey: .link)
        try container.encode(collectiveExternalLinkType, forKey: .collectiveExternalLinkType)
    }
}

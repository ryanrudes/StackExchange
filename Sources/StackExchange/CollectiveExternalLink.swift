import Foundation

public struct CollectiveExternalLink: Codable {
    public var link: String
    public var collectiveExternalLinkType: CollectiveExternalLinkType
    
    public enum CollectiveExternalLinkType: String, Codable {
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
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        link = try values.decode(String.self, forKey: .link)
        collectiveExternalLinkType = try values.decode(CollectiveExternalLinkType.self, forKey: .collectiveExternalLinkType)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(link, forKey: .link)
        try container.encode(collectiveExternalLinkType, forKey: .collectiveExternalLinkType)
    }
}

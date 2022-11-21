import Foundation

public struct RelatedSite: Codable {
    var apiSiteParameter: String?
    var name: String
    var relation: Relation
    var siteUrl: String
    
    public enum Relation: String, Codable {
        case parent
        case meta
        case chat
    }

    public enum CodingKeys: String, CodingKey {
        case apiSiteParameter = "api_site_parameter"
        case name
        case relation
        case siteUrl = "site_url"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        apiSiteParameter = try values.decode(String?.self, forKey: .apiSiteParameter)
        name = try values.decode(String.self, forKey: .name)
        relation = try values.decode(Relation.self, forKey: .relation)
        siteUrl = try values.decode(String.self, forKey: .siteUrl)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(apiSiteParameter, forKey: .apiSiteParameter)
        try container.encode(name, forKey: .name)
        try container.encode(relation, forKey: .relation)
        try container.encode(siteUrl, forKey: .siteUrl)
    }
}

import Foundation

public struct Collective: Codable {
    public var description: String
    public var externalLinks: [CollectiveExternalLink]
    public var link: String
    public var name: String
    public var slug: String
    public var tags: [String]

    enum CodingKeys: String, CodingKey {
        case description
        case externalLinks = "external_links"
        case link
        case name
        case slug
        case tags
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        description = try values.decode(String.self, forKey: .description)
        externalLinks = try values.decode([CollectiveExternalLink].self, forKey: .externalLinks)
        link = try values.decode(String.self, forKey: .link)
        name = try values.decode(String.self, forKey: .name)
        slug = try values.decode(String.self, forKey: .slug)
        tags = try values.decode([String].self, forKey: .tags)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(description, forKey: .description)
        try container.encode(externalLinks, forKey: .externalLinks)
        try container.encode(link, forKey: .link)
        try container.encode(name, forKey: .name)
        try container.encode(slug, forKey: .slug)
        try container.encode(tags, forKey: .tags)
    }
}

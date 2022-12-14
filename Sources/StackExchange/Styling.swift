import Foundation

public struct Styling: Codable {
    public var linkColor: String
    public var tagBackgroundColor: String
    public var tagForegroundColor: String

    enum CodingKeys: String, CodingKey {
        case linkColor = "link_color"
        case tagBackgroundColor = "tag_background_color"
        case tagForegroundColor = "tag_foreground_color"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        linkColor = try values.decode(String.self, forKey: .linkColor)
        tagBackgroundColor = try values.decode(String.self, forKey: .tagBackgroundColor)
        tagForegroundColor = try values.decode(String.self, forKey: .tagForegroundColor)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(linkColor, forKey: .linkColor)
        try container.encode(tagBackgroundColor, forKey: .tagBackgroundColor)
        try container.encode(tagForegroundColor, forKey: .tagForegroundColor)
    }
}

import Foundation

public struct Site: Codable {
    public var aliases: [String]?
    public var apiSiteParameter: String
    public var audience: String
    public var closedBetaDate: Date?
    public var faviconUrl: String
    public var highResolutionIconUrl: String?
    public var iconUrl: String
    public var launchDate: Date
    public var logoUrl: String
    public var markdownExtensions: [MarkdownExtension]?
    public var name: String
    public var openBetaDate: Date?
    public var relatedSites: [RelatedSite]?
    public var siteState: SiteState
    public var siteType: SiteType
    public var siteUrl: String
    public var styling: Styling
    public var twitterAccount: String?

    public enum MarkdownExtension: String, Codable {
        case mathjax = "MathJax"
        case prettify = "Prettify"
        case balsamiq = "Balsamiq"
        case jtab = "jTab"
    }
    
    public enum SiteState: String, Codable {
        case normal
        case closedBeta = "closed_beta"
        case openBeta = "open_beta"
        case linkedMeta = "linked_meta"
    }
    
    public enum SiteType: String, Codable {
        case main = "main_site"
        case meta = "meta_site"
    }
    
    enum CodingKeys: String, CodingKey {
        case aliases
        case apiSiteParameter = "api_site_parameter"
        case audience
        case closedBetaDate = "closed_beta_date"
        case faviconUrl = "favicon_url"
        case highResolutionIconUrl = "high_resolution_icon_url"
        case iconUrl = "icon_url"
        case launchDate = "launch_date"
        case logoUrl = "logo_url"
        case markdownExtensions = "markdown_extensions"
        case name
        case openBetaDate = "open_beta_date"
        case relatedSites = "related_sites"
        case siteState = "site_state"
        case siteType = "site_type"
        case siteUrl = "site_url"
        case styling
        case twitterAccount = "twitter_account"
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        aliases = try values.decode([String]?.self, forKey: .aliases)
        apiSiteParameter = try values.decode(String.self, forKey: .apiSiteParameter)
        audience = try values.decode(String.self, forKey: .audience)
        closedBetaDate = try values.decode(Date?.self, forKey: .closedBetaDate)
        faviconUrl = try values.decode(String.self, forKey: .faviconUrl)
        highResolutionIconUrl = try values.decode(String?.self, forKey: .highResolutionIconUrl)
        iconUrl = try values.decode(String.self, forKey: .iconUrl)
        launchDate = try values.decode(Date.self, forKey: .launchDate)
        logoUrl = try values.decode(String.self, forKey: .logoUrl)
        markdownExtensions = try values.decode([MarkdownExtension]?.self, forKey: .markdownExtensions)
        name = try values.decode(String.self, forKey: .name)
        openBetaDate = try values.decode(Date?.self, forKey: .openBetaDate)
        relatedSites = try values.decode([RelatedSite]?.self, forKey: .relatedSites)
        siteState = try values.decode(SiteState.self, forKey: .siteState)
        siteType = try values.decode(SiteType.self, forKey: .siteType)
        siteUrl = try values.decode(String.self, forKey: .siteUrl)
        styling = try values.decode(Styling.self, forKey: .styling)
        twitterAccount = try values.decode(String?.self, forKey: .twitterAccount)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(aliases, forKey: .aliases)
        try container.encode(apiSiteParameter, forKey: .apiSiteParameter)
        try container.encode(audience, forKey: .audience)
        try container.encode(closedBetaDate, forKey: .closedBetaDate)
        try container.encode(faviconUrl, forKey: .faviconUrl)
        try container.encode(highResolutionIconUrl, forKey: .highResolutionIconUrl)
        try container.encode(iconUrl, forKey: .iconUrl)
        try container.encode(launchDate, forKey: .launchDate)
        try container.encode(logoUrl, forKey: .logoUrl)
        try container.encode(markdownExtensions, forKey: .markdownExtensions)
        try container.encode(name, forKey: .name)
        try container.encode(openBetaDate, forKey: .openBetaDate)
        try container.encode(relatedSites, forKey: .relatedSites)
        try container.encode(siteState, forKey: .siteState)
        try container.encode(siteType, forKey: .siteType)
        try container.encode(siteUrl, forKey: .siteUrl)
        try container.encode(styling, forKey: .styling)
        try container.encode(twitterAccount, forKey: .twitterAccount)
    }
}

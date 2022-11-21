import Foundation

struct Filter: Codable {
    var filter: String
    var filterType: FilterType
    var includedFields: [String]

    enum FilterType: String, Codable {
        case safe
        case unsafe
        case invalid
    }
    
    enum CodingKeys: String, CodingKey {
        case filter
        case filterType = "filter_type"
        case includedFields = "included_fields"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        filter = try values.decode(String.self, forKey: .filter)
        filterType = try values.decode(FilterType.self, forKey: .filterType)
        includedFields = try values.decode([String].self, forKey: .includedFields)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(filter, forKey: .filter)
        try container.encode(filterType, forKey: .filterType)
        try container.encode(includedFields, forKey: .includedFields)
    }
}

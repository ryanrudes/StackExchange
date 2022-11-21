import Foundation

struct AccountMerge: Codable {
    var mergeDate: Date
    var newAccountid: Int
    var oldAccountid: Int

    enum CodingKeys: String, CodingKey {
        case mergeDate = "merge_date"
        case newAccountid = "new_account_id"
        case oldAccountid = "old_account_id"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        mergeDate = try values.decode(Date.self, forKey: .mergeDate)
        newAccountid = try values.decode(Int.self, forKey: .newAccountid)
        oldAccountid = try values.decode(Int.self, forKey: .oldAccountid)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(mergeDate, forKey: .mergeDate)
        try container.encode(newAccountid, forKey: .newAccountid)
        try container.encode(oldAccountid, forKey: .oldAccountid)
    }
}

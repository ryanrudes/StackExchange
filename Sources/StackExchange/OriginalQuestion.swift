import Foundation

struct OriginalQuestion: Codable {
    var acceptedAnswerid: Int?
    var answerCount: Int
    var questionID: Int
    var title: String

    enum CodingKeys: String, CodingKey {
        case acceptedAnswerid = "accepted_answer_id"
        case answerCount = "answer_count"
        case questionID = "question_id"
        case title
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        acceptedAnswerid = try values.decode(Int?.self, forKey: .acceptedAnswerid)
        answerCount = try values.decode(Int.self, forKey: .answerCount)
        questionID = try values.decode(Int.self, forKey: .questionID)
        title = try values.decode(String.self, forKey: .title)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(acceptedAnswerid, forKey: .acceptedAnswerid)
        try container.encode(answerCount, forKey: .answerCount)
        try container.encode(questionID, forKey: .questionID)
        try container.encode(title, forKey: .title)
    }
}

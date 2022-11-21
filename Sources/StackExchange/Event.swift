import Foundation

struct Event: Codable {
    var creationDate: Date
    var eventID: Int
    var eventType: EventType
    var excerpt: String
    var link: String
    
    enum EventType: String, Codable {
        case questionPosted = "question_posted"
        case answerPosted = "answer_posted"
        case commentPosted = "comment_posted"
        case postEdited = "post_editer"
        case userCreated = "user_created"
    }

    enum CodingKeys: String, CodingKey {
        case creationDate = "creation_date"
        case eventID = "event_id"
        case eventType = "event_type"
        case excerpt
        case link
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        eventID = try values.decode(Int.self, forKey: .eventID)
        eventType = try values.decode(EventType.self, forKey: .eventType)
        excerpt = try values.decode(String.self, forKey: .excerpt)
        link = try values.decode(String.self, forKey: .link)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(eventID, forKey: .eventID)
        try container.encode(eventType, forKey: .eventType)
        try container.encode(excerpt, forKey: .excerpt)
        try container.encode(link, forKey: .link)
    }
}

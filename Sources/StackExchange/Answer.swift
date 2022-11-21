import Foundation

public struct Answer: Codable {
    var accepted: Bool
    var answerID: Int
    var awardedBountyAmount: Int?
    var awardedBountyUsers: [ShallowUser]?
    var body: String
    var bodyMarkdown: String
    var canComment: Bool
    var canEdit: Bool
    var canFlag: Bool
    var canSuggestEdit: Bool
    var collectives: [Collective]
    var commentCount: Int
    var comments: [Comment]?
    var communityOwnedDate: Date?
    var contentLicense: String
    var creationDate: Date
    var downVoteCount: Int
    var downvoted: Bool
    var isAccepted: Bool
    var lastActivityDate: Date
    var lastEditDate: Date?
    var lastEditor: ShallowUser
    var link: String
    var lockedDate: Date?
    var owner: ShallowUser?
    var postedByCollectives: [Collective]
    var questionID: Int
    var recommendations: [CollectiveRecommendation]
    var score: Int
    var shareLink: String
    var tags: [String]
    var title: String
    var upVoteCount: Int
    var upvoted: Bool

    public enum CodingKeys: String, CodingKey {
        case accepted
        case answerID = "answer_id"
        case awardedBountyAmount = "awarded_bounty_amount"
        case awardedBountyUsers = "awarded_bounty_users"
        case body
        case bodyMarkdown = "body_markdown"
        case canComment = "can_comment"
        case canEdit = "can_edit"
        case canFlag = "can_flag"
        case canSuggestEdit = "can_suggest_edit"
        case collectives
        case commentCount = "comment_count"
        case comments
        case communityOwnedDate = "community_owned_date"
        case contentLicense = "content_license"
        case creationDate = "creation_date"
        case downVoteCount = "down_vote_count"
        case downvoted
        case isAccepted = "is_accepted"
        case lastActivityDate = "last_activity_date"
        case lastEditDate = "last_edit_date"
        case lastEditor = "last_editor"
        case link
        case lockedDate = "locked_date"
        case owner
        case postedByCollectives = "posted_by_collectives"
        case questionID = "question_id"
        case recommendations
        case score
        case shareLink = "share_link"
        case tags
        case title
        case upVoteCount = "up_vote_count"
        case upvoted
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        accepted = try values.decode(Bool.self, forKey: .accepted)
        answerID = try values.decode(Int.self, forKey: .answerID)
        awardedBountyAmount = try values.decode(Int?.self, forKey: .awardedBountyAmount)
        awardedBountyUsers = try values.decode([ShallowUser]?.self, forKey: .awardedBountyUsers)
        body = try values.decode(String.self, forKey: .body)
        bodyMarkdown = try values.decode(String.self, forKey: .bodyMarkdown)
        canComment = try values.decode(Bool.self, forKey: .canComment)
        canEdit = try values.decode(Bool.self, forKey: .canEdit)
        canFlag = try values.decode(Bool.self, forKey: .canFlag)
        canSuggestEdit = try values.decode(Bool.self, forKey: .canSuggestEdit)
        collectives = try values.decode([Collective].self, forKey: .collectives)
        commentCount = try values.decode(Int.self, forKey: .commentCount)
        comments = try values.decode([Comment]?.self, forKey: .comments)
        communityOwnedDate = try values.decode(Date?.self, forKey: .communityOwnedDate)
        contentLicense = try values.decode(String.self, forKey: .contentLicense)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        downVoteCount = try values.decode(Int.self, forKey: .downVoteCount)
        downvoted = try values.decode(Bool.self, forKey: .downvoted)
        isAccepted = try values.decode(Bool.self, forKey: .isAccepted)
        lastActivityDate = try values.decode(Date.self, forKey: .lastActivityDate)
        lastEditDate = try values.decode(Date?.self, forKey: .lastEditDate)
        lastEditor = try values.decode(ShallowUser.self, forKey: .lastEditor)
        link = try values.decode(String.self, forKey: .link)
        lockedDate = try values.decode(Date?.self, forKey: .lockedDate)
        owner = try values.decode(ShallowUser?.self, forKey: .owner)
        postedByCollectives = try values.decode([Collective].self, forKey: .postedByCollectives)
        questionID = try values.decode(Int.self, forKey: .questionID)
        recommendations = try values.decode([CollectiveRecommendation].self, forKey: .recommendations)
        score = try values.decode(Int.self, forKey: .score)
        shareLink = try values.decode(String.self, forKey: .shareLink)
        tags = try values.decode([String].self, forKey: .tags)
        title = try values.decode(String.self, forKey: .title)
        upVoteCount = try values.decode(Int.self, forKey: .upVoteCount)
        upvoted = try values.decode(Bool.self, forKey: .upvoted)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(accepted, forKey: .accepted)
        try container.encode(answerID, forKey: .answerID)
        try container.encode(awardedBountyAmount, forKey: .awardedBountyAmount)
        try container.encode(awardedBountyUsers, forKey: .awardedBountyUsers)
        try container.encode(body, forKey: .body)
        try container.encode(bodyMarkdown, forKey: .bodyMarkdown)
        try container.encode(canComment, forKey: .canComment)
        try container.encode(canEdit, forKey: .canEdit)
        try container.encode(canFlag, forKey: .canFlag)
        try container.encode(canSuggestEdit, forKey: .canSuggestEdit)
        try container.encode(collectives, forKey: .collectives)
        try container.encode(commentCount, forKey: .commentCount)
        try container.encode(comments, forKey: .comments)
        try container.encode(communityOwnedDate, forKey: .communityOwnedDate)
        try container.encode(contentLicense, forKey: .contentLicense)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(downVoteCount, forKey: .downVoteCount)
        try container.encode(downvoted, forKey: .downvoted)
        try container.encode(isAccepted, forKey: .isAccepted)
        try container.encode(lastActivityDate, forKey: .lastActivityDate)
        try container.encode(lastEditDate, forKey: .lastEditDate)
        try container.encode(lastEditor, forKey: .lastEditor)
        try container.encode(link, forKey: .link)
        try container.encode(lockedDate, forKey: .lockedDate)
        try container.encode(owner, forKey: .owner)
        try container.encode(postedByCollectives, forKey: .postedByCollectives)
        try container.encode(questionID, forKey: .questionID)
        try container.encode(recommendations, forKey: .recommendations)
        try container.encode(score, forKey: .score)
        try container.encode(shareLink, forKey: .shareLink)
        try container.encode(tags, forKey: .tags)
        try container.encode(title, forKey: .title)
        try container.encode(upVoteCount, forKey: .upVoteCount)
        try container.encode(upvoted, forKey: .upvoted)
    }
}

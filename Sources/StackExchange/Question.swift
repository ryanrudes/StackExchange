import Foundation

struct Question: Codable {
    var acceptedAnswerid: Int?
    var answerCount: Int
    var answers: [Answer]?
    var body: String
    var bodyMarkdown: String
    var bountyAmount: Int?
    var bountyClosesDate: Date?
    var bountyUser: ShallowUser?
    var canAnswer: Bool
    var canClose: Bool
    var canComment: Bool
    var canEdit: Bool
    var canFlag: Bool
    var canSuggestEdit: Bool
    var closeVoteCount: Int
    var closedDate: Date?
    var closedDetails: ClosedDetails?
    var closedReason: String?
    var collectives: [Collective]
    var commentCount: Int
    var comments: [Comment]?
    var communityOwnedDate: Date?
    var contentLicense: String
    var creationDate: Date
    var deleteVoteCount: Int
    var downVoteCount: Int
    var downvoted: Bool
    var favoriteCount: Int
    var favorited: Bool
    var isAnswered: Bool
    var lastActivityDate: Date
    var lastEditDate: Date?
    var lastEditor: ShallowUser
    var link: String
    var lockedDate: Date?
    var migratedFrom: MigrationInfo?
    var migratedTo: MigrationInfo?
    var notice: Notice
    var owner: ShallowUser?
    var postedByCollectives: [Collective]
    var protectedDate: Date?
    var questionID: Int
    var reopenVoteCount: Int
    var score: Int
    var shareLink: String
    var tags: [String]
    var title: String
    var upVoteCount: Int
    var upvoted: Bool
    var viewCount: Int

    enum CodingKeys: String, CodingKey {
        case acceptedAnswerid = "accepted_answer_id"
        case answerCount = "answer_count"
        case answers
        case body
        case bodyMarkdown = "body_markdown"
        case bountyAmount = "bounty_amount"
        case bountyClosesDate = "bounty_closes_date"
        case bountyUser = "bounty_user"
        case canAnswer = "can_answer"
        case canClose = "can_close"
        case canComment = "can_comment"
        case canEdit = "can_edit"
        case canFlag = "can_flag"
        case canSuggestEdit = "can_suggest_edit"
        case closeVoteCount = "close_vote_count"
        case closedDate = "closed_date"
        case closedDetails = "closed_details"
        case closedReason = "closed_reason"
        case collectives
        case commentCount = "comment_count"
        case comments
        case communityOwnedDate = "community_owned_date"
        case contentLicense = "content_license"
        case creationDate = "creation_date"
        case deleteVoteCount = "delete_vote_count"
        case downVoteCount = "down_vote_count"
        case downvoted
        case favoriteCount = "favorite_count"
        case favorited
        case isAnswered = "is_answered"
        case lastActivityDate = "last_activity_date"
        case lastEditDate = "last_edit_date"
        case lastEditor = "last_editor"
        case link
        case lockedDate = "locked_date"
        case migratedFrom = "migrated_from"
        case migratedTo = "migrated_to"
        case notice
        case owner
        case postedByCollectives = "posted_by_collectives"
        case protectedDate = "protected_date"
        case questionID = "question_id"
        case reopenVoteCount = "reopen_vote_count"
        case score
        case shareLink = "share_link"
        case tags
        case title
        case upVoteCount = "up_vote_count"
        case upvoted
        case viewCount = "view_count"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        acceptedAnswerid = try values.decode(Int?.self, forKey: .acceptedAnswerid)
        answerCount = try values.decode(Int.self, forKey: .answerCount)
        answers = try values.decode([Answer]?.self, forKey: .answers)
        body = try values.decode(String.self, forKey: .body)
        bodyMarkdown = try values.decode(String.self, forKey: .bodyMarkdown)
        bountyAmount = try values.decode(Int?.self, forKey: .bountyAmount)
        bountyClosesDate = try values.decode(Date?.self, forKey: .bountyClosesDate)
        bountyUser = try values.decode(ShallowUser?.self, forKey: .bountyUser)
        canAnswer = try values.decode(Bool.self, forKey: .canAnswer)
        canClose = try values.decode(Bool.self, forKey: .canClose)
        canComment = try values.decode(Bool.self, forKey: .canComment)
        canEdit = try values.decode(Bool.self, forKey: .canEdit)
        canFlag = try values.decode(Bool.self, forKey: .canFlag)
        canSuggestEdit = try values.decode(Bool.self, forKey: .canSuggestEdit)
        closeVoteCount = try values.decode(Int.self, forKey: .closeVoteCount)
        closedDate = try values.decode(Date?.self, forKey: .closedDate)
        closedDetails = try values.decode(ClosedDetails?.self, forKey: .closedDetails)
        closedReason = try values.decode(String?.self, forKey: .closedReason)
        collectives = try values.decode([Collective].self, forKey: .collectives)
        commentCount = try values.decode(Int.self, forKey: .commentCount)
        comments = try values.decode([Comment]?.self, forKey: .comments)
        communityOwnedDate = try values.decode(Date?.self, forKey: .communityOwnedDate)
        contentLicense = try values.decode(String.self, forKey: .contentLicense)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        deleteVoteCount = try values.decode(Int.self, forKey: .deleteVoteCount)
        downVoteCount = try values.decode(Int.self, forKey: .downVoteCount)
        downvoted = try values.decode(Bool.self, forKey: .downvoted)
        favoriteCount = try values.decode(Int.self, forKey: .favoriteCount)
        favorited = try values.decode(Bool.self, forKey: .favorited)
        isAnswered = try values.decode(Bool.self, forKey: .isAnswered)
        lastActivityDate = try values.decode(Date.self, forKey: .lastActivityDate)
        lastEditDate = try values.decode(Date?.self, forKey: .lastEditDate)
        lastEditor = try values.decode(ShallowUser.self, forKey: .lastEditor)
        link = try values.decode(String.self, forKey: .link)
        lockedDate = try values.decode(Date?.self, forKey: .lockedDate)
        migratedFrom = try values.decode(MigrationInfo?.self, forKey: .migratedFrom)
        migratedTo = try values.decode(MigrationInfo?.self, forKey: .migratedTo)
        notice = try values.decode(Notice.self, forKey: .notice)
        owner = try values.decode(ShallowUser?.self, forKey: .owner)
        postedByCollectives = try values.decode([Collective].self, forKey: .postedByCollectives)
        protectedDate = try values.decode(Date?.self, forKey: .protectedDate)
        questionID = try values.decode(Int.self, forKey: .questionID)
        reopenVoteCount = try values.decode(Int.self, forKey: .reopenVoteCount)
        score = try values.decode(Int.self, forKey: .score)
        shareLink = try values.decode(String.self, forKey: .shareLink)
        tags = try values.decode([String].self, forKey: .tags)
        title = try values.decode(String.self, forKey: .title)
        upVoteCount = try values.decode(Int.self, forKey: .upVoteCount)
        upvoted = try values.decode(Bool.self, forKey: .upvoted)
        viewCount = try values.decode(Int.self, forKey: .viewCount)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(acceptedAnswerid, forKey: .acceptedAnswerid)
        try container.encode(answerCount, forKey: .answerCount)
        try container.encode(answers, forKey: .answers)
        try container.encode(body, forKey: .body)
        try container.encode(bodyMarkdown, forKey: .bodyMarkdown)
        try container.encode(bountyAmount, forKey: .bountyAmount)
        try container.encode(bountyClosesDate, forKey: .bountyClosesDate)
        try container.encode(bountyUser, forKey: .bountyUser)
        try container.encode(canAnswer, forKey: .canAnswer)
        try container.encode(canClose, forKey: .canClose)
        try container.encode(canComment, forKey: .canComment)
        try container.encode(canEdit, forKey: .canEdit)
        try container.encode(canFlag, forKey: .canFlag)
        try container.encode(canSuggestEdit, forKey: .canSuggestEdit)
        try container.encode(closeVoteCount, forKey: .closeVoteCount)
        try container.encode(closedDate, forKey: .closedDate)
        try container.encode(closedDetails, forKey: .closedDetails)
        try container.encode(closedReason, forKey: .closedReason)
        try container.encode(collectives, forKey: .collectives)
        try container.encode(commentCount, forKey: .commentCount)
        try container.encode(comments, forKey: .comments)
        try container.encode(communityOwnedDate, forKey: .communityOwnedDate)
        try container.encode(contentLicense, forKey: .contentLicense)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(deleteVoteCount, forKey: .deleteVoteCount)
        try container.encode(downVoteCount, forKey: .downVoteCount)
        try container.encode(downvoted, forKey: .downvoted)
        try container.encode(favoriteCount, forKey: .favoriteCount)
        try container.encode(favorited, forKey: .favorited)
        try container.encode(isAnswered, forKey: .isAnswered)
        try container.encode(lastActivityDate, forKey: .lastActivityDate)
        try container.encode(lastEditDate, forKey: .lastEditDate)
        try container.encode(lastEditor, forKey: .lastEditor)
        try container.encode(link, forKey: .link)
        try container.encode(lockedDate, forKey: .lockedDate)
        try container.encode(migratedFrom, forKey: .migratedFrom)
        try container.encode(migratedTo, forKey: .migratedTo)
        try container.encode(notice, forKey: .notice)
        try container.encode(owner, forKey: .owner)
        try container.encode(postedByCollectives, forKey: .postedByCollectives)
        try container.encode(protectedDate, forKey: .protectedDate)
        try container.encode(questionID, forKey: .questionID)
        try container.encode(reopenVoteCount, forKey: .reopenVoteCount)
        try container.encode(score, forKey: .score)
        try container.encode(shareLink, forKey: .shareLink)
        try container.encode(tags, forKey: .tags)
        try container.encode(title, forKey: .title)
        try container.encode(upVoteCount, forKey: .upVoteCount)
        try container.encode(upvoted, forKey: .upvoted)
        try container.encode(viewCount, forKey: .viewCount)
    }
}

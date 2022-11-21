import Foundation

struct Notification: Codable {
    var body: String
    var creationDate: Date
    var isUnread: Bool
    var notificationType: NotificationType
    var postID: Int?
    var site: Site
    
    enum NotificationType: String, Codable {
        case generic
        case profileActivity = "profile_activity"
        case bountyExpired = "bounty_expired"
        case bountyExpiresInOneDay = "bounty_expires_in_one_day"
        case badgeEarned = "badge_earned"
        case bountyExpiresInThreeDays = "bounty_expires_in_three_days"
        case reputationBonus = "reputation_bonus"
        case accountsAssociated = "accounts_associated"
        case newPrivilege = "new_privilege"
        case postMigrated = "post_migrated"
        case moderatorMessage = "moderator_message"
        case registrationReminder = "registration_reminder"
        case editSuggested = "edit_suggested"
        case substantiveEdit = "substantive_edit"
        case bountyGracePeriodStarted = "bounty_grace_period_started"
    }
    
    enum CodingKeys: String, CodingKey {
        case body
        case creationDate = "creation_date"
        case isUnread = "is_unread"
        case notificationType = "notification_type"
        case postID = "post_id"
        case site
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        body = try values.decode(String.self, forKey: .body)
        creationDate = try values.decode(Date.self, forKey: .creationDate)
        isUnread = try values.decode(Bool.self, forKey: .isUnread)
        notificationType = try values.decode(NotificationType.self, forKey: .notificationType)
        postID = try values.decode(Int?.self, forKey: .postID)
        site = try values.decode(Site.self, forKey: .site)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(body, forKey: .body)
        try container.encode(creationDate, forKey: .creationDate)
        try container.encode(isUnread, forKey: .isUnread)
        try container.encode(notificationType, forKey: .notificationType)
        try container.encode(postID, forKey: .postID)
        try container.encode(site, forKey: .site)
    }
}

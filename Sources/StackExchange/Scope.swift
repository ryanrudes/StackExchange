import Foundation

enum Scope: String {
    /// access a user's global inbox
    case readInbox = "read_inbox"
    /// access\_tokens with this scope do not expire
    case noExpiry = "no_expiry"
    /// perform write operations as a user
    case writeAccess = "write_access"
    /// access full history of a user's private actions on the site
    case privateInfo = "private_info"
}

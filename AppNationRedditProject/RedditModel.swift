//
//  RedditModel.swift
//  AppNationRedditProject
//
//  Created by Muhammed YILDIRIM  on 3.02.2022.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let reddit = try? newJSONDecoder().decode(Reddit.self, from: jsonData)

//
// To read values from URLs:
//
//   let task = URLSession.shared.redditTask(with: url) { reddit, response, error in
//     if let reddit = reddit {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - Reddit
struct Reddit: Codable {
    let kind: String?
    let data: RedditData?
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.redditDataTask(with: url) { redditData, response, error in
//     if let redditData = redditData {
//       ...
//     }
//   }
//   task.resume()

// MARK: - RedditData
struct RedditData: Codable {
    let after: JSONNull?
    let dist: Int?
    let modhash, geoFilter: String?
    let children: [Child]?
    let before: String?

    enum CodingKeys: String, CodingKey {
        case after, dist, modhash
        case geoFilter = "geo_filter"
        case children, before
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.childTask(with: url) { child, response, error in
//     if let child = child {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Child
struct Child: Codable {
    let kind: Kind?
    let data: ChildData?
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.childDataTask(with: url) { childData, response, error in
//     if let childData = childData {
//       ...
//     }
//   }
//   task.resume()

// MARK: - ChildData
struct ChildData: Codable {
    let approvedAtUTC: JSONNull?
    let subreddit: Subreddit?
    let selftext, authorFullname: String?
    let saved: Bool?
    let modReasonTitle: JSONNull?
    let gilded: Int?
    let clicked: Bool?
    let title: String?
    let linkFlairRichtext: [JSONAny]?
    let subredditNamePrefixed: SubredditNamePrefixed?
    let hidden: Bool?
    let pwls: Int?
    let linkFlairCSSClass: String?
    let downs: Int?
    let thumbnailHeight: Int?
    let topAwardedType: JSONNull?
    let hideScore: Bool?
    let name: String?
    let quarantine: Bool?
    let linkFlairTextColor: FlairTextColor?
    let upvoteRatio: Double?
    let authorFlairBackgroundColor: String?
    let subredditType: SubredditType?
    let ups, totalAwardsReceived: Int?
    let mediaEmbed: MediaEmbed?
    let thumbnailWidth: Int?
    let authorFlairTemplateID: JSONNull?
    let isOriginalContent: Bool?
    let userReports: [JSONAny]?
    let secureMedia: Media?
    let isRedditMediaDomain, isMeta: Bool?
    let category: JSONNull?
    let secureMediaEmbed: MediaEmbed?
    let linkFlairText: String?
    let canModPost: Bool?
    let score: Int?
    let approvedBy: JSONNull?
    let isCreatedFromAdsUI, authorPremium: Bool?
    let thumbnail: String?
    let authorFlairCSSClass: AuthorFlairCSSClass?
    let authorFlairRichtext: [JSONAny]?
    let gildings: Gildings?
    let postHint: String?
    let contentCategories: JSONNull?
    let isSelf: Bool?
    let modNote: JSONNull?
    let created: Int?
    let linkFlairType: FlairType?
    let wls: Int?
    let removedByCategory, bannedBy: JSONNull?
    let authorFlairType: FlairType?
    let domain: String?
    let allowLiveComments: Bool?
    let selftextHTML: String?
    let likes, suggestedSort, bannedAtUTC, viewCount: JSONNull?
    let archived, noFollow, isCrosspostable, pinned: Bool?
    let over18: Bool?
    let preview: Preview?
    let allAwardings, awarders: [JSONAny]?
    let mediaOnly: Bool?
    let linkFlairTemplateID: String?
    let canGild, spoiler, locked: Bool?
    let authorFlairText: String?
    let treatmentTags: [JSONAny]?
    let visited: Bool?
    let removedBy, numReports, distinguished: JSONNull?
    let subredditID: SubredditID?
    let authorIsBlocked: Bool?
    let modReasonBy, removalReason: JSONNull?
    let linkFlairBackgroundColor, id: String?
    let isRobotIndexable: Bool?
    let reportReasons: JSONNull?
    let author: String?
    let discussionType: JSONNull?
    let numComments: Int?
    let sendReplies: Bool?
    let whitelistStatus: WhitelistStatus?
    let contestMode: Bool?
    let modReports: [JSONAny]?
    let authorPatreonFlair: Bool?
    let authorFlairTextColor: FlairTextColor?
    let permalink: String?
    let parentWhitelistStatus: WhitelistStatus?
    let stickied: Bool?
    let url: String?
    let subredditSubscribers, createdUTC, numCrossposts: Int?
    let media: Media?
    let isVideo: Bool?
    let urlOverriddenByDest: String?
    let pollData: PollData?

    enum CodingKeys: String, CodingKey {
        case approvedAtUTC = "approved_at_utc"
        case subreddit, selftext
        case authorFullname = "author_fullname"
        case saved
        case modReasonTitle = "mod_reason_title"
        case gilded, clicked, title
        case linkFlairRichtext = "link_flair_richtext"
        case subredditNamePrefixed = "subreddit_name_prefixed"
        case hidden, pwls
        case linkFlairCSSClass = "link_flair_css_class"
        case downs
        case thumbnailHeight = "thumbnail_height"
        case topAwardedType = "top_awarded_type"
        case hideScore = "hide_score"
        case name, quarantine
        case linkFlairTextColor = "link_flair_text_color"
        case upvoteRatio = "upvote_ratio"
        case authorFlairBackgroundColor = "author_flair_background_color"
        case subredditType = "subreddit_type"
        case ups
        case totalAwardsReceived = "total_awards_received"
        case mediaEmbed = "media_embed"
        case thumbnailWidth = "thumbnail_width"
        case authorFlairTemplateID = "author_flair_template_id"
        case isOriginalContent = "is_original_content"
        case userReports = "user_reports"
        case secureMedia = "secure_media"
        case isRedditMediaDomain = "is_reddit_media_domain"
        case isMeta = "is_meta"
        case category
        case secureMediaEmbed = "secure_media_embed"
        case linkFlairText = "link_flair_text"
        case canModPost = "can_mod_post"
        case score
        case approvedBy = "approved_by"
        case isCreatedFromAdsUI = "is_created_from_ads_ui"
        case authorPremium = "author_premium"
        case thumbnail
        case authorFlairCSSClass = "author_flair_css_class"
        case authorFlairRichtext = "author_flair_richtext"
        case gildings
        case postHint = "post_hint"
        case contentCategories = "content_categories"
        case isSelf = "is_self"
        case modNote = "mod_note"
        case created
        case linkFlairType = "link_flair_type"
        case wls
        case removedByCategory = "removed_by_category"
        case bannedBy = "banned_by"
        case authorFlairType = "author_flair_type"
        case domain
        case allowLiveComments = "allow_live_comments"
        case selftextHTML = "selftext_html"
        case likes
        case suggestedSort = "suggested_sort"
        case bannedAtUTC = "banned_at_utc"
        case viewCount = "view_count"
        case archived
        case noFollow = "no_follow"
        case isCrosspostable = "is_crosspostable"
        case pinned
        case over18 = "over_18"
        case preview
        case allAwardings = "all_awardings"
        case awarders
        case mediaOnly = "media_only"
        case linkFlairTemplateID = "link_flair_template_id"
        case canGild = "can_gild"
        case spoiler, locked
        case authorFlairText = "author_flair_text"
        case treatmentTags = "treatment_tags"
        case visited
        case removedBy = "removed_by"
        case numReports = "num_reports"
        case distinguished
        case subredditID = "subreddit_id"
        case authorIsBlocked = "author_is_blocked"
        case modReasonBy = "mod_reason_by"
        case removalReason = "removal_reason"
        case linkFlairBackgroundColor = "link_flair_background_color"
        case id
        case isRobotIndexable = "is_robot_indexable"
        case reportReasons = "report_reasons"
        case author
        case discussionType = "discussion_type"
        case numComments = "num_comments"
        case sendReplies = "send_replies"
        case whitelistStatus = "whitelist_status"
        case contestMode = "contest_mode"
        case modReports = "mod_reports"
        case authorPatreonFlair = "author_patreon_flair"
        case authorFlairTextColor = "author_flair_text_color"
        case permalink
        case parentWhitelistStatus = "parent_whitelist_status"
        case stickied, url
        case subredditSubscribers = "subreddit_subscribers"
        case createdUTC = "created_utc"
        case numCrossposts = "num_crossposts"
        case media
        case isVideo = "is_video"
        case urlOverriddenByDest = "url_overridden_by_dest"
        case pollData = "poll_data"
    }
}

enum AuthorFlairCSSClass: String, Codable {
    case new = "new"
}

enum FlairTextColor: String, Codable {
    case dark = "dark"
    case light = "light"
}

enum FlairType: String, Codable {
    case text = "text"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.gildingsTask(with: url) { gildings, response, error in
//     if let gildings = gildings {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Gildings
struct Gildings: Codable {
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.mediaTask(with: url) { media, response, error in
//     if let media = media {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Media
struct Media: Codable {
    let type: MediaType?
    let oembed: Oembed?
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.oembedTask(with: url) { oembed, response, error in
//     if let oembed = oembed {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Oembed
struct Oembed: Codable {
    let providerURL: String?
    let version, title: String?
    let type: OembedType?
    let thumbnailWidth, height, width: Int?
    let html, authorName: String?
    let providerName: ProviderName?
    let thumbnailURL: String?
    let thumbnailHeight: Int?
    let authorURL: String?

    enum CodingKeys: String, CodingKey {
        case providerURL = "provider_url"
        case version, title, type
        case thumbnailWidth = "thumbnail_width"
        case height, width, html
        case authorName = "author_name"
        case providerName = "provider_name"
        case thumbnailURL = "thumbnail_url"
        case thumbnailHeight = "thumbnail_height"
        case authorURL = "author_url"
    }
}

enum ProviderName: String, Codable {
    case youTube = "YouTube"
}

enum OembedType: String, Codable {
    case video = "video"
}

enum MediaType: String, Codable {
    case youtubeCOM = "youtube.com"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.mediaEmbedTask(with: url) { mediaEmbed, response, error in
//     if let mediaEmbed = mediaEmbed {
//       ...
//     }
//   }
//   task.resume()

// MARK: - MediaEmbed
struct MediaEmbed: Codable {
    let content: String?
    let width: Int?
    let scrolling: Bool?
    let height: Int?
    let mediaDomainURL: String?

    enum CodingKeys: String, CodingKey {
        case content, width, scrolling, height
        case mediaDomainURL = "media_domain_url"
    }
}

enum WhitelistStatus: String, Codable {
    case allAds = "all_ads"
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.pollDataTask(with: url) { pollData, response, error in
//     if let pollData = pollData {
//       ...
//     }
//   }
//   task.resume()

// MARK: - PollData
struct PollData: Codable {
    let predictionStatus, totalStakeAmount: JSONNull?
    let votingEndTimestamp: Int?
    let options: [Option]?
    let voteUpdatesRemained: JSONNull?
    let isPrediction: Bool?
    let resolvedOptionID, userWonAmount, userSelection: JSONNull?
    let totalVoteCount: Int?
    let tournamentID: JSONNull?

    enum CodingKeys: String, CodingKey {
        case predictionStatus = "prediction_status"
        case totalStakeAmount = "total_stake_amount"
        case votingEndTimestamp = "voting_end_timestamp"
        case options
        case voteUpdatesRemained = "vote_updates_remained"
        case isPrediction = "is_prediction"
        case resolvedOptionID = "resolved_option_id"
        case userWonAmount = "user_won_amount"
        case userSelection = "user_selection"
        case totalVoteCount = "total_vote_count"
        case tournamentID = "tournament_id"
    }
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.optionTask(with: url) { option, response, error in
//     if let option = option {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Option
struct Option: Codable {
    let text, id: String?
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.previewTask(with: url) { preview, response, error in
//     if let preview = preview {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Preview
struct Preview: Codable {
    let images: [Image]?
    let enabled: Bool?
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.imageTask(with: url) { image, response, error in
//     if let image = image {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Image
struct Image: Codable {
    let source: Source?
    let resolutions: [Source]?
    let variants: Gildings?
    let id: String?
}

//
// To read values from URLs:
//
//   let task = URLSession.shared.sourceTask(with: url) { source, response, error in
//     if let source = source {
//       ...
//     }
//   }
//   task.resume()

// MARK: - Source
struct Source: Codable {
    let url: String?
    let width, height: Int?
}

enum Subreddit: String, Codable {
    case flutterDev = "FlutterDev"
}

enum SubredditID: String, Codable {
    case t52X3Q8 = "t5_2x3q8"
}

enum SubredditNamePrefixed: String, Codable {
    case rFlutterDev = "r/FlutterDev"
}

enum SubredditType: String, Codable {
    case subredditTypePublic = "public"
}

enum Kind: String, Codable {
    case t3 = "t3"
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - URLSession response handlers

extension URLSession {
    fileprivate func codableTask<T: Codable>(with url: URL, completionHandler: @escaping (T?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completionHandler(nil, response, error)
                return
            }
            completionHandler(try? newJSONDecoder().decode(T.self, from: data), response, nil)
        }
    }

    func redditTask(with url: URL, completionHandler: @escaping (Reddit?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}

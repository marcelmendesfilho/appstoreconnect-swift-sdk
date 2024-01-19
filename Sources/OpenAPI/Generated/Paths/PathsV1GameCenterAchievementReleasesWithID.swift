// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterAchievementReleases {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/gameCenterAchievementReleases/{id}`
		public let path: String

		public func get(fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterAchievementReleaseResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterAchievementReleases, include), id: "gameCenterAchievementReleases-get_instance")
		}

		private func makeGetQuery(_ fieldsGameCenterAchievementReleases: [FieldsGameCenterAchievementReleases]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsGameCenterAchievementReleases, forKey: "fields[gameCenterAchievementReleases]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsGameCenterAchievementReleases: String, Codable, CaseIterable {
			case gameCenterAchievement
			case gameCenterDetail
			case live
		}

		public enum Include: String, Codable, CaseIterable {
			case gameCenterAchievement
			case gameCenterDetail
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "gameCenterAchievementReleases-delete_instance")
		}
	}
}
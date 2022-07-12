// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.CiBuildActions.WithID {
	public var artifacts: Artifacts {
		Artifacts(path: path + "/artifacts")
	}

	public struct Artifacts {
		/// Path: `/v1/ciBuildActions/{id}/artifacts`
		public let path: String

		public func get(fieldsCiArtifacts: [FieldsCiArtifacts]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.CiArtifactsResponse> {
			.get(path, query: makeGetQuery(fieldsCiArtifacts, limit))
		}

		private func makeGetQuery(_ fieldsCiArtifacts: [FieldsCiArtifacts]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsCiArtifacts, forKey: "fields[ciArtifacts]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsCiArtifacts: String, Codable, CaseIterable {
			case downloadURL = "downloadUrl"
			case fileName
			case fileSize
			case fileType
		}
	}
}
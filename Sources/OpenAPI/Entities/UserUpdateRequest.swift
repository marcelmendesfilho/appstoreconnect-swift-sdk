// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct UserUpdateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?
		public var relationships: Relationships?

		public enum `Type`: String, Codable, CaseIterable {
			case users
		}

		public struct Attributes: Codable {
			public var roles: [UserRole]?
			public var isAllAppsVisible: Bool?
			public var isProvisioningAllowed: Bool?

			public init(roles: [UserRole]? = nil, isAllAppsVisible: Bool? = nil, isProvisioningAllowed: Bool? = nil) {
				self.roles = roles
				self.isAllAppsVisible = isAllAppsVisible
				self.isProvisioningAllowed = isProvisioningAllowed
			}

			private enum CodingKeys: String, CodingKey {
				case roles
				case isAllAppsVisible = "allAppsVisible"
				case isProvisioningAllowed = "provisioningAllowed"
			}
		}

		public struct Relationships: Codable {
			public var visibleApps: VisibleApps?

			public struct VisibleApps: Codable {
				public var data: [Datum]?

				public struct Datum: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case apps
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}
				}

				public init(data: [Datum]? = nil) {
					self.data = data
				}
			}

			public init(visibleApps: VisibleApps? = nil) {
				self.visibleApps = visibleApps
			}
		}

		public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil) {
			self.type = type
			self.id = id
			self.attributes = attributes
			self.relationships = relationships
		}
	}

	public init(data: Data) {
		self.data = data
	}
}
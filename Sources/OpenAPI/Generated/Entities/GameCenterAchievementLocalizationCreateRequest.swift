// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterAchievementLocalizationCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case gameCenterAchievementLocalizations
		}

		public struct Attributes: Codable {
			public var locale: String
			public var name: String
			public var beforeEarnedDescription: String
			public var afterEarnedDescription: String

			public init(locale: String, name: String, beforeEarnedDescription: String, afterEarnedDescription: String) {
				self.locale = locale
				self.name = name
				self.beforeEarnedDescription = beforeEarnedDescription
				self.afterEarnedDescription = afterEarnedDescription
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.locale = try values.decode(String.self, forKey: "locale")
				self.name = try values.decode(String.self, forKey: "name")
				self.beforeEarnedDescription = try values.decode(String.self, forKey: "beforeEarnedDescription")
				self.afterEarnedDescription = try values.decode(String.self, forKey: "afterEarnedDescription")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(locale, forKey: "locale")
				try values.encode(name, forKey: "name")
				try values.encode(beforeEarnedDescription, forKey: "beforeEarnedDescription")
				try values.encode(afterEarnedDescription, forKey: "afterEarnedDescription")
			}
		}

		public struct Relationships: Codable {
			public var gameCenterAchievement: GameCenterAchievement

			public struct GameCenterAchievement: Codable {
				public var data: Data

				public struct Data: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case gameCenterAchievements
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}

					public init(from decoder: Decoder) throws {
						let values = try decoder.container(keyedBy: StringCodingKey.self)
						self.type = try values.decode(`Type`.self, forKey: "type")
						self.id = try values.decode(String.self, forKey: "id")
					}

					public func encode(to encoder: Encoder) throws {
						var values = encoder.container(keyedBy: StringCodingKey.self)
						try values.encode(type, forKey: "type")
						try values.encode(id, forKey: "id")
					}
				}

				public init(data: Data) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decode(Data.self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(data, forKey: "data")
				}
			}

			public init(gameCenterAchievement: GameCenterAchievement) {
				self.gameCenterAchievement = gameCenterAchievement
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.gameCenterAchievement = try values.decode(GameCenterAchievement.self, forKey: "gameCenterAchievement")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(gameCenterAchievement, forKey: "gameCenterAchievement")
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.attributes = try values.decode(Attributes.self, forKey: "attributes")
			self.relationships = try values.decode(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(attributes, forKey: "attributes")
			try values.encode(relationships, forKey: "relationships")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
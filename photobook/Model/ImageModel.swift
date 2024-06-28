import Foundation

// MARK: - ImageModelElement
struct ImageModelElement: Decodable {
    let id: String
    let description: String?
    let urls: Urls

    enum CodingKeys: String, CodingKey {
        case id
        case description
        case urls
    }
}

// MARK: - Urls
struct Urls: Decodable {
    let raw, full, regular, small: String
    let thumb: String

    enum CodingKeys: String, CodingKey {
        case raw, full, regular, small, thumb
    }
}

typealias ImageModel = [ImageModelElement]

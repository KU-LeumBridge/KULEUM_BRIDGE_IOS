import Foundation

enum Category: String, CaseIterable, Codable {
    case 한식
    case 분식
    case 디저트
    case 일식
    case 치킨_햄버거
    case 양식
    case 중식
    case 고기
    case 술집
}

struct Store: Codable, Hashable {
    let category: String
    let storeName: String
    let address: String
    let latitude: Double
    let longitude: Double
    let oneLineReview: String
    let id: Int
}

import Foundation
import CoreLocation

struct Store: Codable, Hashable, Identifiable {
    let category: Category
    let storeName: String
    let address: String
    let latitude: Double
    let longitude: Double
    let oneLineReview: String
    let id: Int

    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

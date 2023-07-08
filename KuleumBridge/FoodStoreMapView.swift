import MapKit
import SwiftUI

struct FoodStoreMapView: View {
    // 초기 화면 설정: KU시네마파크
    let initLatitude: Double = 37.543250
    let initLongitude: Double = 127.072402

    @State private var region: MKCoordinateRegion

    init() {
        _region = State(initialValue: MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: initLatitude, longitude: initLongitude), span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007)))
    }

    var body: some View {
        Map(coordinateRegion: $region)
            .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct FoodStoreMapView_Previews: PreviewProvider {
    static var previews: some View {
        FoodStoreMapView()
    }
}

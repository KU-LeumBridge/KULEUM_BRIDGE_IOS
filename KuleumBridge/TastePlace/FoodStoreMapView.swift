import MapKit
import SwiftUI

struct FoodStoreMapView: View {
    let initLatitude: Double = 37.543250
    let initLongitude: Double = 127.072402

    @State private var region: MKCoordinateRegion
    @StateObject var viewModel = ViewModel()
    @State private var selectedStore: Store?

    init() {
        _region = State(initialValue: MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: initLatitude, longitude: initLongitude), span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007)))
    }

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: viewModel.stores) { store in
            MapAnnotation(coordinate: store.coordinate) {
                PlaceAnnotationView(store: store)
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .sheet(item: $selectedStore) { store in
            StoreInfo(store: store)
        }
        .onAppear {
            viewModel.fetch()
        }
    }
}

struct FoodStoreMapView_Previews: PreviewProvider {
    static var previews: some View {
        FoodStoreMapView()
    }
}
